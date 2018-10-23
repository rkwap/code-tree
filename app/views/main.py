from flask import Flask, request, render_template, flash, redirect, url_for, session, Blueprint
from flask_mysqldb import MySQL
from passlib.hash import sha256_crypt as sha
from flask_session import Session
import ast
from random import shuffle
from app import *
from datetime import datetime, timedelta

main = Blueprint('main', __name__)


@main.route('/', methods=['GET', 'POST'])
@login_required
def index():
    if request.method== 'GET':
        ## For Leaderboard##
        u_time = query_db("SELECT ABS(TIMESTAMPDIFF(SECOND, e_time, s_time)) FROM Leaderboard WHERE u_id=%s",(session["userid"],))  
        u_total_time = 0
        if u_time is not None:
            for i in u_time:
                if i[0] is not None:
                    u_total_time += int(i[0])

            execute_db("update Users set time=%s where id=%s",(
                                str(u_total_time),
                                session["userid"]
                                ))  
            user = query_db("SELECT * FROM Users WHERE id=%s", (session["userid"],))
        ## For Leaderboard ####
        sel_ques=True
        ### assigning question to each student
        ass_ques = query_db("SELECT questions FROM Users WHERE id=%s", (session["userid"],))
        if ass_ques[0][0] is None:
            all_ques = query_db("SELECT * FROM Questions ORDER BY RAND() LIMIT 10;")
            q_ids=[]
            for i in all_ques:
                q_ids.append(i[0])
                execute_db("INSERT INTO Leaderboard(u_id,q_id) VALUES(%s,%s)",(
                        session["userid"],
                        str(i[0]),
                        ))

            execute_db("UPDATE Users SET questions=%s WHERE id=%s",(
                        str(q_ids),
                        session["userid"],
                        ))
            return redirect(url_for("main.index"))
        else:
            all_ques_ids = ast.literal_eval(ass_ques[0][0]) 
            all_ques_titles = []
            for i in all_ques_ids:
                temp = query_db("SELECT title FROM Questions WHERE id=%s",(i,))
                all_ques_titles.append(temp[0][0])
            done_q=[] ## ids of questions done
            lead_board = query_db("SELECT * FROM Leaderboard WHERE u_id=%s", (session["userid"],))
            for i,j in zip(all_ques_ids,lead_board):
                if j[2] == i:
                    if j[5] == 1:
                        done_q.append(i)
            ndone_q = [x for x in all_ques_ids if x not in done_q] ## ids of questions not done
            marks=[]
            time_taken=[]
            for q_id in all_ques_ids:
                temp = query_db("SELECT (CAST(IFNULL(correct,0) AS SIGNED) + CAST(IFNULL(incorrect,0) AS SIGNED)) FROM Leaderboard WHERE u_id=%s and q_id=%s",(session["userid"],q_id,))
                marks.append(temp[0][0])
                temp2 = query_db("SELECT ABS(TIMESTAMPDIFF(SECOND, e_time, s_time))  FROM Leaderboard WHERE u_id=%s and q_id=%s",(session["userid"],q_id,))
                if temp2[0][0] is None:
                    time_taken.append(str(0))
                else:
                    time_taken.append(float("{0:.2f}".format(int(temp2[0][0])/60)))

            all_ques = zip(all_ques_ids,all_ques_titles,marks,time_taken)
        ### end of assigning questions
    else:
        sel_ques=False
        q_id = int(request.form.get('q_id'))
        question = query_db("SELECT * FROM Questions WHERE id=%s", (q_id,))
        details = question[0][1]
        ## finding starting details of program
        s2 = "<p>#include &lt;stdio.h"
        starting= '<p>#include &lt;stdio.h'+details[details.index(s2) + len(s2):]
        status=''
        s_point = ast.literal_eval("["+str(question[0][2])+"]") 
        answers = ast.literal_eval("["+str(question[0][4])+"]") 
        title = question[0][5]
        breaks_n = len(answers)
        options = ast.literal_eval("["+str(question[0][3])+"]") 
        # shuffle the options
        for i in range(0,breaks_n):
            shuffle(options[i])
        #####
        co=0
        l_board = query_db("SELECT * FROM Leaderboard WHERE q_id=%s and u_id=%s", (q_id,session['userid']))
        usr_detail = query_db("SELECT * FROM Users WHERE id=%s", (session["userid"],))

        if request.form.get('step'):
            step = int(request.form.get('step'))

            for i in range(1,breaks_n+1):
                option_i = request.form.get('option_'+str(i))
                if option_i == str(answers[i-1]):
                    co += 1

            if co == 1:
                if l_board[0][3] is None:
                    marks = 3
                else:
                    marks = int(l_board[0][3]) + 3

                execute_db("update Leaderboard set correct=%s where q_id=%s and u_id=%s",(
                        str(marks),
                        int(q_id),
                        session["userid"]
                        ))
                
                # # Calculating Score
                if usr_detail[0][6] is None: 
                    score = 3
                else:
                    score = int(usr_detail[0][6]) + 3

                execute_db("UPDATE Users SET scores=%s where id=%s",(
                            str(score),
                            session["userid"],
                            ))           

                execute_db("update Leaderboard set e_time=NOW() where q_id=%s",(
                            int(q_id),
                            ))                      
                
                answer = True

                for i in range(0,step-1):
                    status += str(s_point[i])+'<br>'+str(answers[i])

                flash("Congrats! You have selected correct option.", "success")
            else:
                if l_board[0][4] is None:
                    marks = -1
                else:
                    marks = int(l_board[0][4]) - 1
                execute_db("update Leaderboard set incorrect=%s where q_id=%s and u_id=%s",(
                        str(marks),
                        int(q_id),
                        session["userid"],
                        ))

                # # Calculating Score
                if usr_detail[0][6] is None: 
                    score = -1
                else:
                    score = int(usr_detail[0][6]) - 1

                execute_db("UPDATE Users SET scores=%s where id=%s",(
                            str(score),
                            session["userid"],
                            ))         

                for i in range(0,step-2):
                    status += str(s_point[i])+'<br>'+str(answers[i])                

                step = step-1
                if l_board[0][4] is not None:
                    if int(l_board[0][4]) == -5:
                        return redirect(url_for("main.index"))
                answer = False
                flash("Oops! You have selected wrong option.", "warning")     

        else:
            # Starting Step
            step = 1
            status = ''
            execute_db("update Leaderboard set s_time=NOW() where q_id=%s",(
                        int(q_id),
                        ))              
            execute_db("update Leaderboard set done=%s where q_id=%s",(
                        1,
                        int(q_id),
                        ))            
            

        # Ending Step
        if step > int(breaks_n): # For last break
            execute_db("update Leaderboard set e_time=NOW() where q_id=%s",(
                        int(q_id),
                        ))               
            flash("Question submitted successfully!", "success") 
            return redirect(url_for("main.index"))
        # return render_template("start.html", breaks_n=breaks_n,**locals())



    return render_template("start.html", **locals())

@main.route('/leaderboard', methods=['GET', 'POST'])
@login_required
def leaderboard():
    sel_ques= True
    users = query_db("SELECT * FROM Users ORDER BY Scores DESC,time ASC")  
    return render_template("leaderboard.html", **locals())