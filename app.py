from flask import Flask, render_template, request, redirect, session, url_for, jsonify
from werkzeug.utils import secure_filename
from  passlib.hash import  pbkdf2_sha1 as hash
import mysql.connector
import os
import string
import random
import datetime
import json
import utilities.plagiarismcheker as checker

UPLOAD_FOLDER = 'static/uploads/usersFiles/'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'doc', 'docx', 'c', 'cpp', 'cs', 'java', 'py', 'html', 'css', 'js'}

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

## Start functions

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def changeFileName(fileName):
    letters = string.ascii_letters
    newStr = ''.join(random.choice(letters) for i in range(10)) + "-" + fileName
    return newStr

def jsonToTuple(data):
    mydata = []
    print(data)
    for v in data:
        mydata.append(data[v])
    return tuple(mydata)   

def isUserLogedin():
    logedin = session.get('loggedin')
    if  logedin == None or logedin == False :
        return False
    return True  

def getCurrentUser():
    if not isUserLogedin():
        return None
    dec = {}
    dec["user_id"] = session['id']
    dec["email"] = session['email']
    dec["name"] = session['name']
    dec["image"] = session['image']
    return dec

## End functions

## Start home

@app.route("/")
def home():
    if getCurrentUser():
        mycursor.execute('SELECT * FROM filesresult WHERE user_id = %s', (session['id'],))
        data = mycursor.fetchall()
        tempList = []
        dates =  []
        for i in data:
            dates.append(i[2].strftime("%m/%d/%Y, %H:%M:%S"))
            tempList.append(json.loads(i[1]))
        return render_template("index.html", pagename = "Home Page", currentUser = getCurrentUser(), results = tempList, dates= dates, len = len(tempList))
    
    return render_template("index.html", pagename = "Home Page", currentUser = getCurrentUser())

## End home

## Start upload files

@app.route('/checkPlagiarism', methods = ['GET', 'POST'])
def upload_file():
    if not isUserLogedin():
        return redirect(url_for("login"))
    if(request.method == 'POST'):
        uploadedFiles = []
        allowedFiles = []
        notAllowedFiles = []
        # check if the post request has the file part
        if 'files[]' not in request.files:
            return "error"

        files = request.files.getlist('files[]')
        
        for file in files:
            if file and allowed_file(file.filename):
                allowedFiles.append(file.filename)
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], file.filename))
                uploadedFiles.append(os.path.join(app.config['UPLOAD_FOLDER'], file.filename))
            else:
                notAllowedFiles.append(file.filename)

        if(len(uploadedFiles) != 0):
            data  = checker.check_plagiarism(uploadedFiles)
            sql = "INSERT INTO filesresult (user_id,result) VALUES (%s, %s)"
            mycursor.execute(sql,(session["id"], json.dumps(data[0]),))
            mydb.commit()

        if(len(notAllowedFiles) != 0):
            return jsonify(status = False, msg = "Your Files are uploded", notAllowedFiles = notAllowedFiles, allowedFiles = allowedFiles, comparedFiles = data)
        else:   
            return jsonify(status = True, msg = "Your Files are uploded", notAllowedFiles = notAllowedFiles, allowedFiles = allowedFiles, comparedFiles = data[0], keys = data[1])

    return render_template('Check-percentage.html', pagename = 'Check Plagiarism', currentUser = getCurrentUser())

## End  upload files

## Start User Registeration

@app.route('/registration', methods = ['GET', 'POST'])
def register_user():
    if isUserLogedin():
        return redirect(url_for("home"))
    if(request.method == "GET"):
        return render_template("registration.html" , pagename = "registration")
    else:
        if len(request.form.get("name")) == 0:
            return render_template("registration.html" , pagename = "registration", msg = 'No name is entered!')

        mycursor.execute('SELECT email FROM users WHERE email = %s', (request.form['email'],)) 
        if mycursor.fetchone():
            return render_template("registration.html" , pagename = "registration", msg = 'Email is already used')
        
        if len(request.form.get("password")) < 8:
            return render_template("registration.html" , pagename = "registration", msg = 'Password less than 8 characters')

        filename = "placeholder.png"
        file = request.files['file']
        if file.filename != "":
            filename = changeFileName(secure_filename(file.filename))
            file.save(os.path.join(app.config['UPLOAD_FOLDER']+"../users/",  filename))
        form = request.form.to_dict()
        form["image"] = filename
        form["password"] = hash.encrypt(request.form.get("password"))
        sql = "INSERT INTO users (name,email,password,image) VALUES (%s, %s, %s, %s)"
        val = jsonToTuple(form)
        print(val)
        mycursor.execute(sql,val)
        mydb.commit()
        return redirect(url_for("login"))

## End User Registeration

## Start log-in

@app.route('/login', methods=['GET', 'POST'])
def login():
    if isUserLogedin():
        return redirect(url_for("home"))
    msg = '' 
    if(request.method == 'POST'): 
        email = request.form['email'] 
        password = request.form['password'] 
        mycursor.execute('SELECT id, email, name, password, image FROM users WHERE email = %s', (email,)) 
        account = mycursor.fetchone()
        if account and hash.verify(password , account[3]): 
            session['loggedin'] = True
            session['id'] = account[0]
            session['email'] = account[1]
            session['name'] = account[2]
            session['image'] = account[4]
            msg = 'Logged in successfully !'
            return redirect(url_for('home')) 
        else: 
            msg = 'Incorrect email or password'
    return render_template('sign-in.html', pagename = 'Login', msg = msg)

## End log-in

## Start log-out

@app.route('/logout') 
def logout(): 
    session.pop('loggedin', None) 
    session.pop('id', None) 
    session.pop('email', None)
    session.pop('name', None)
    return redirect(url_for('home'))

## End log-out

## Start Writing-Tips

@app.route('/Writing-Tips')
def table():
    return render_template('Writing-Tips.html', pagename = 'Writing Tips', currentUser = getCurrentUser())

## End Writing-Tips

## Start about-us

@app.route('/Aboutus')
def about_us():
    return render_template('About-Us.html', pagename = 'About us', currentUser = getCurrentUser())

## End about-us

## Start profile

@app.route('/Profile', methods=['GET', 'POST'])
def profile():
    return render_template('history.html', pagename = 'Profile', currentUser = getCurrentUser())

## End profile

if __name__ == '__main__':
    app.run(debug = True)