import cv2 as cv
import numpy as np
#import matplotlib.pyplot as plt
from tensorflow.keras import datasets, layers, models

CLASS_NAMES = ['Plane', 'Car', 'Bird', 'Cat', 'Deer', 'Dog', 'Frog', 'Horse', 'Ship', 'Truck']

def recognise_image(files):
    model = models.load_model('cifar10_classifier.model')

    images = [cv.imread(file) for file in files]
    images = [cv.resize(image, (32, 32)) for image in images]
    images = [cv.cvtColor(image, cv.COLOR_BGR2RGB) for image in images]

    predictions = [model.predict(np.array([image]) / 255) for image in images]
    indexs = [np.argmax(prediction) for prediction in predictions]
    print([f'prediction is {CLASS_NAMES[index]}' for index in indexs])

    return indexs

    # plt.imshow(images)
    # plt.xlabel(f'{CLASS_NAMES[index]}')
    # plt.show()