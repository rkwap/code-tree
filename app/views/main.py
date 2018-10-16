from flask import Flask, request, render_template, flash, redirect, url_for, session, Blueprint
from flask_mysqldb import MySQL
from passlib.hash import sha256_crypt as sha
from flask_session import Session
from app import *

main = Blueprint('main', __name__)
@main.route('/', methods=['GET', 'POST'])
@login_required
def index():
    return render_template("index.html", **locals())