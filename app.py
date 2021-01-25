from flask import Flask,render_template, request, flash, redirect, url_for, session
from werkzeug.utils import secure_filename
from werkzeug.datastructures import  FileStorage
from flask_mysqldb import MySQL
import mysql.connector
import MySQLdb.cursors

import os
import string
import random

UPLOAD_FOLDER = 'static/uploads'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'doc', 'docx'}

app = Flask(__name__)

app.secret_key="123"

app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['SESSION_TYPE'] = 'filesystem'

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="investigator"
)
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mycursor = mydb.cursor()

mysql = MySQL(app)


#mycursor.execute("select * from users")
#result = mycursor.fetchone()

#print(result)


## functions

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


def changeFileName(fileName):
    letters = string.ascii_letters
    newStr = ''.join(random.choice(letters) for i in range(10))+"-"+fileName
    return newStr

def jsonToTuple(data):
    mydata = []
    print(data)
    for  v in data:
        mydata.append(data[v])
    
    return tuple(mydata)   


## end of functions

## Start home

@app.route("/")
def home():
    return render_template("index.html", pagename = "Home Page")

## End home

## Start  upload files

@app.route('/Check-percentage.html', methods = ['GET', 'POST'])
def upload_file():
    if(request.method == 'GET'):
        return render_template('/Check-percentage.html', pagename = 'Check Plagiarism')
    else:
        # check if the post request has the file part
        if 'files[]' not in request.files:
            #flash('No file part')
            #return redirect(request.url)
            return "error"

        files = request.files.getlist('files[]')
        # if user does not select file, browser also
        # submit an empty part without filename
        # if file.filename == '':
        #     #flash('No selected file')
        #     #return redirect(request.url)
        #     return "no file uploaded"
        
        for file in files:
            if file and allowed_file(file.filename):
                filename = changeFileName(secure_filename(file.filename))
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))

        #return "file apploded"
        #return redirect(url_for('uploaded_file', filename=filename))

    return "please slelect a file of type of" +  str(ALLOWED_EXTENSIONS)   

## End  upload files

## Start User Registeration

@app.route('/registration.html', methods = ['GET', 'POST'])
def register_user():
    if(request.method == "GET"):
        return render_template("registration.html" , pagename = "registration")
    else:
        sql = "INSERT INTO user (name,email,password) VALUES (%s, %s, %s)"
        val = jsonToTuple(request.form)
        mycursor.execute(sql,val)
        mydb.commit()
        return "user is registered"

## End User Registeration

## Start log-in

@app.route('/sign-in.html', methods=['GET', 'POST'])
def log_in_user():
    msg = '' 
    if(request.method == 'POST'): 
        email = request.form['email'] 
        password = request.form['password'] 
        myCursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor) 
        myCursor.execute('SELECT * FROM user WHERE email = % s AND password = % s', (email, password)) 
        account = myCursor.fetchone() 
        if account: 
            session['loggedin'] = True
            session['id'] = account['id'] 
            session['username'] = account['username'] 
            msg = 'Logged in successfully !'
            return render_template('index.html', msg = msg) 
        else: 
            msg = 'Incorrect username / password !'
    return render_template('sign-in.html', pagename = 'Log-in', msg = msg)

## End log-in

## Start log-out

@app.route('/logout') 
def logout(): 
    session.pop('loggedin', None) 
    session.pop('id', None) 
    session.pop('username', None) 
    return redirect(url_for('sign-in.html'))

## End log-out

## Start Writing-Tips

@app.route('/Writing-Tips.html')
def writing_tips():
    return render_template('Writing-Tips.html', pagename = 'Writing Tips')

## End Writing-Tips

## Start about-us

@app.route('/About-Us.html')
def about_us():
    return render_template('About-Us.html', pagename = 'About us')

## End about-us

if __name__ == '__main__':
    app.run(debug = True)