from app import *
from flask import (Blueprint, Flask, flash, redirect, render_template, request,
                   session, url_for)
from flask_mysqldb import MySQL
from flask_session import Session
from passlib.hash import sha256_crypt as sha
from flask_recaptcha import ReCaptcha
import requests
import json

auth = Blueprint('auth', __name__)
recaptcha = ReCaptcha(app=app)

def is_human(captcha_response):
    """ Validating recaptcha response from google server
        Returns True captcha test passed for submitted form else returns False.
    """
    secret = "6Le8-XUUAAAAAD3eT4zYW_i2pWEsJw_szKQwlyZc"
    payload = {'response':captcha_response, 'secret':secret}
    response = requests.post("https://www.google.com/recaptcha/api/siteverify", payload)
    response_text = json.loads(response.text)
    return response_text['success']

# User login
@auth.route('/login', methods=['POST','GET'])
def login():
    if request.method== 'GET':
        return render_template('login.html')
    else:
        email=request.form['email']
        password=request.form['password']
        captcha_response = request.form['g-recaptcha-response']
        phash = query_db("select password from Users where email= %s", (email, ))
        global userid
        userid = query_db("select id from Users where email = %s", (email, ))
        userd = query_db("select * from Users where email = %s", (email, ))
        if is_human(captcha_response):
            if phash is None:
                flash("User does not exist","warning")
                return redirect(url_for("auth.login"))

            if sha.verify(password, phash[0][0]):
                session["email"] = email
                session["userid"] = userid[0][0]
                session["user_name"] = userd[0][1]
                flash("Login Successful", "success")
                return redirect(url_for("main.index"))
            else:
                flash("Incorrect Password","warning")
                return redirect(url_for("auth.login"))
        else:
            flash("Sorry! Bots not allowed.","danger")
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
        captcha_response = request.form['g-recaptcha-response']
        confpassword=request.form['confpassword']
        if is_human(captcha_response):
            if password!=confpassword:
                flash("Passwords don't match","danger")
                return redirect(url_for("auth.signup"))
            else:
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
        else:
            flash("Sorry! Bots not allowed.","danger")
            return redirect(url_for("auth.login"))


@auth.route('/logout')
def logout():
    session.clear()
    flash("Successfully Logged Out!", "success")
    return redirect(url_for("auth.login"))
