from app import *
from flask import (Blueprint, Flask, flash, redirect, render_template, request,
                   session, url_for)
from flask_mysqldb import MySQL
from flask_session import Session
from passlib.hash import sha256_crypt as sha

auth = Blueprint('auth', __name__)

# User login
@auth.route('/login', methods=['POST','GET'])
def login():
    if request.method== 'GET':
        return render_template('login.html')
    else:
        email=request.form['email']
        password=request.form['password']
        phash = query_db("select password from Users where email= %s", (email, ))
        global userid
        userid = query_db("select id from Users where email = %s", (email, ))
        if phash is None:
            flash("User does not exist","danger")
            return redirect(url_for("auth.login"))

        if sha.verify(password, phash[0][0]):
            session["email"] = email
            session["userid"] = userid[0][0]
            flash("Login Successful", "success")
            return redirect(url_for("main.index"))
        else:
            flash("Incorrect Password","danger")
            return redirect(url_for("auth.login"))

@auth.route('/signup',methods=['POST','GET'])
def signup():
    if request.method== 'GET':
        return render_template('register.html')
    else:
        name=request.form['name']
        roll=request.form['roll']
        email=request.form['email']
        password=request.form['password']
        if query_db("select email,roll from Users where email = %s or roll=%s", (email,roll,)) is not None:
            flash("Already Registered","danger")
            return render_template("register.html")

        password=sha.encrypt(password)
        execute_db('insert into Users(name,roll,email,password) values(%s,%s,%s,%s)',(
            name,
            roll,
            email,
            password,
            ))
        return redirect(url_for("auth.login"))


@auth.route('/logout')
def logout():
    session.clear()
    return redirect(url_for("auth.login"))
