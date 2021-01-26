from flask import Flask,render_template, request, flash, redirect, session, url_for
from werkzeug.utils import secure_filename
from werkzeug.datastructures import  FileStorage
from  passlib.hash import  pbkdf2_sha1 as hash
import mysql.connector


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
    return dec
## end of functions

## Start home

# @app.before_request
# def func():
#      print("Func you")

# @app.after_request
# def funcfunc(response):
#      print(response)
#      return response

@app.route("/")
def home():
    
    
    
    return render_template("index.html", pagename = "Home Page", currentUser = getCurrentUser())

## End home

## Start  upload files

@app.route('/checkPlagiarism', methods = ['GET', 'POST'])
def upload_file():
    if not isUserLogedin():
        return redirect(url_for("login"))
    if(request.method == 'GET'):
        return render_template('Check-percentage.html', pagename = 'Check Plagiarism')
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

@app.route('/registration', methods = ['GET', 'POST'])
def register_user():
    if isUserLogedin():
        return redirect(url_for("home"))
    if(request.method == "GET"):
        return render_template("registration.html" , pagename = "registration")
    else:
        form = request.form.to_dict()
        form["password"] = hash.encrypt(request.form.get("password"))
        del form["submit"]
        sql = "INSERT INTO users (name,email,password) VALUES (%s, %s, %s)"
        val = jsonToTuple(form)
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
        mycursor.execute('SELECT id, email, name, password FROM users WHERE email = %s', (email,)) 
        account = mycursor.fetchone()
        if account and hash.verify(password , account[3]): 
            session['loggedin'] = True
            session['id'] = account[0] 
            session['email'] = account[1]
            session['name'] = account[2]
            msg = 'Logged in successfully !'
            return redirect(url_for('home')) 
        else: 
            msg = 'Incorrect email / password !'
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
def writing_tips():
    return render_template('Writing-Tips.html', pagename = 'Writing Tips')

## End Writing-Tips

## Start about-us

@app.route('/Aboutus')
def about_us():
    return render_template('About-Us.html', pagename = 'About us')

## End about-us

if __name__ == '__main__':
    app.run(debug = True)