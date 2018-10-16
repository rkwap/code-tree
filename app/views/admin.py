from app import *
from flask import (Blueprint, Flask, flash, redirect, render_template, request,
                   session, url_for)
from flask_mysqldb import MySQL
from flask_session import Session
from passlib.hash import sha256_crypt as sha
admin = Blueprint('admin', __name__)

# Admin login
@admin.route('/login', methods=['POST','GET'])
def login():
    if request.method== 'GET':
        admin_chk = True
        return render_template('login.html',**locals())
    else:
        username=request.form['username']
        password=request.form['password']
        phash = query_db("select password from Admin where username= %s", (username, ))
        global adminid
        adminid = query_db("select id from Admin where username = %s", (username, ))
        if phash is None:
            flash("User does not exist","danger")
            return redirect(url_for("admin.login"))

        if sha.verify(password, phash[0][0]):
            session["username"] = username
            session["adminid"] = adminid[0][0]
            flash("Login Successful", "success")
            return redirect(url_for("admin.index"))
        else:
            flash("Incorrect Password","danger")
            return redirect(url_for("admin.login"))

# Admin logout           
@admin.route('/logout')
def logout():
    session.clear()
    return redirect(url_for("admin.login"))



# Admin Index
@admin.route('/', methods=['GET', 'POST'])
@admin_required
def index():
    return render_template("index.html", **locals())

# Admin Add Questions
@admin.route('/add_questions', methods=['GET', 'POST'])
@admin_required
def add_questions():
    if request.method== 'GET':
        breaks = False
    else:
        breaks = True
        if request.form.get('submit'):
            global breaks_n,id,details
            id = query_db("SELECT id FROM Questions ORDER BY id DESC LIMIT 1;")
            id = int(id[0][0])+1
            breaks_n= request.form['breaks_n'] # number of breaks
            details= request.form['details'] # details of a question
        answers=[]
        if request.form.get('step'):
            step = int(request.form.get('step'))
            answers= request.form.get('c_option_'+str(step))
            s_point= request.form.get('s_point_'+str(step))
            option1= str(request.form.get('option1_'+str(step)))
            option2= str(request.form.get('option2_'+str(step)))
            option3= str(request.form.get('option3_'+str(step)))
            options= "["+"'"+option1+"'"+","+"'"+option2+"'"+","+"'"+option3+"'"+"]"

            if step == 1:
                execute_db("INSERT INTO Questions(id, details, s_point, options, answers) Values(%s, %s, %s, %s, %s)",(
                    id,
                    details,
                    "'"+s_point+"'",
                    options,
                    "'"+answers+"'",
                    ))
            else:
                all = query_db("select * from Questions where id=%s",(id,))
                print('############')
                execute_db("update Questions set s_point=%s, options=%s, answers=%s where id=%s",(
                        all[0][2]+","+"'"+s_point+"'",
                        all[0][3]+","+options,
                        all[0][4]+","+"'"+answers+"'",
                        id,
                        ))

            if step == int(breaks_n):
                print("Hello")
                return redirect(url_for("admin.add_questions"))
            # print(answers)
            # print(request.form.get('step'))
            return render_template("questions.html", breaks_n=breaks_n,**locals())
        else:
            step = 0

    return render_template("questions.html", **locals())   
