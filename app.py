from flask import Flask,render_template, request, flash
from werkzeug.utils import secure_filename
from werkzeug.datastructures import  FileStorage
import mysql.connector

import os
import string
import random


UPLOAD_FOLDER = 'static/uploads'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'doc', 'docx'}

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

app.secret_key="123"
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


## end of functions




@app.route("/home")
def home():
    return render_template("index.html", pagename = "Home Page")



## Start  appload files

@app.route('/uploader', methods = ['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
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

## End  appload files



## Start User Registeration
@app.route('/register', methods = ['GET', 'POST'])
def register_user():
    if(request.method == "GET"):
        return render_template("register.html" , pagename = "User Register")
    else:

        sql = "INSERT INTO users (name,email,password) VALUES (%s,%s, %s)"
        val = jsonToTuple(request.form)
        mycursor.execute(sql,val)
        mydb.commit()
       
        return "user is registered"

## End User Registeration
if __name__ == '__main__':
    app.run(debug = True)