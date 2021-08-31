from typing import List
from cv2 import data
from flask import Flask, render_template, request, jsonify
import os

import utilities.predict as predict

UPLOAD_FOLDER = 'static/uploads/'
ALLOWED_EXTENSIONS = {'jpg', 'png', 'jpeg'}
CLASS_NAMES = ['Plane', 'Car', 'Bird', 'Cat', 'Deer', 'Dog', 'Frog', 'Horse', 'Ship', 'Truck']

app = Flask(__name__)

app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['SESSION_TYPE'] = 'filesystem'

## Start functions

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

## End functions

## Start home

@app.route("/", methods = ['GET', 'POST'])
def home():
    if(request.method == 'POST'):
        uploadedFiles = []
        notAllowedFiles = []
        emptyFiles = []
        # check if the post request has the file part
        if 'files[]' not in request.files:
            return "error"

        files = request.files.getlist('files[]')
        
        for file in files:
            if file and allowed_file(file.filename):
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], file.filename))
                if os.path.getsize(os.path.join(app.config['UPLOAD_FOLDER'], file.filename)) == 0:
                    emptyFiles.append(os.path.join(app.config['UPLOAD_FOLDER'], file.filename))
                    os.remove(os.path.join(app.config['UPLOAD_FOLDER'], file.filename))
                else:
                    uploadedFiles.append(os.path.join(app.config['UPLOAD_FOLDER'], file.filename))
            else:
                notAllowedFiles.append(file.filename)

        if(len(uploadedFiles) != 0):
            indexs = predict.recognise_image(uploadedFiles)
            predictions = [CLASS_NAMES[index] for index in indexs]
            data = list(zip(uploadedFiles, predictions))
            print([f'prediction is {CLASS_NAMES[index]}' for index in indexs])
            print(data)

        if(len(notAllowedFiles) != 0 or len(emptyFiles) != 0):
            return jsonify(status = False, msg = "Your Files are uploded", emptyFiles = emptyFiles, notAllowedFiles = notAllowedFiles, uploadedFiles = uploadedFiles)
        else:   
            return jsonify(status = True, msg = "Your Files are uploded", emptyFiles = emptyFiles, notAllowedFiles = notAllowedFiles, data = data)

    return render_template("upload.html", pagename = "Home Page")

## End home

if __name__ == '__main__':
    app.run(debug = True)