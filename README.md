# code-tree
To run the app, first install virtualenv using:
<br><br>
<b>pip3 install virtualenv</b>
<br><br>
After cloning the repository, go to the cloned folder in terminal<br>
and make a virtual enivironment for the app using:
<br><br>
<b>virtualenv venv</b>
<br><br>
Now, to activate virtual environment, type:
<br><br>
<b>. venv/bin/activate</b>
<br><br>
Install all the requirements using:<br><br>
<b>pip3 install -r requirements.txt</b>
<br><br>
After installing all the required packages, type:
<br><br>
<b>python3 run.py</b>
<br><br>
An ip would appear on terminal like 0.0.0.0:50000.<br>
go to that ip in the browser to run the app.

<br><br>

<b>Note: 1. First you have to install mysql and import the given Codetree.sql in a database.<br>
2. Then, create a directory in the cloned directory as 'instance' and in it create a file named 'config.cfg'<br>
and paste the following code in that file.<br><br><br>
MYSQL_USER = 'root'<br>
MYSQL_PASSWORD = 'password'<br>
MYSQL_DB = 'CodeTree'<br>
MYSQL_HOST = 'localhost'<br>
<br>
SESSION_PERMANENT = False<br>
SESSION_TYPE = "filesystem"<br>
<br>
And configure the file as per the preferences of your sql.
</b>
