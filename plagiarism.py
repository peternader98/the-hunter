import os
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

UPLOAD_FOLDER = 'static/uploads/usersFiles/'
ALLOWED_EXTENSIONS = {'.txt', '.pdf', '.doc', '.docx', '.c', '.cpp', '.cs', '.java', '.py', '.html', '.css', '.js'}
plag_threshold = 0.7

f1 = UPLOAD_FOLDER + 'peter'

def changeFileName(fileName):
    newStr = ''.join(fileName[26:])
    return newStr

print(f1, len(UPLOAD_FOLDER))
print(changeFileName(f1))