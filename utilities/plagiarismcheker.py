import os
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from werkzeug.utils import secure_filename

def changeFileName(fileName):
    return ''.join(fileName[26:])

def check_plagiarism(files):
    student_notes = [open(File).read() for File in  files ]

    vectorize = lambda Text: TfidfVectorizer().fit_transform(Text).toarray()
    similarity = lambda doc1, doc2: cosine_similarity([doc1, doc2])

    vectors = vectorize(student_notes)
    s_vectors = list(zip(files, vectors))

    plagiarism_results = set()
    
    for student_a, text_vector_a in s_vectors:
        new_vectors = s_vectors.copy()
        current_index = new_vectors.index((student_a, text_vector_a))
        del new_vectors[current_index]
        for student_b , text_vector_b in new_vectors:
            sim_score = similarity(text_vector_a, text_vector_b)[0][1]            
            student_pair = sorted((student_a, student_b))
            score = (changeFileName(secure_filename(student_pair[0])), changeFileName(secure_filename(student_pair[1])),sim_score * 100)
            plagiarism_results.add(score)
    return plagiarism_results