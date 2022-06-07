import zmq
import sys
import os
import time 
import numpy as np
import cv2

from msg_pb2 import *


context = zmq.Context()
socket = context.socket(zmq.REP)
socket.bind("tcp://*:5000")

ocv_mat = OcvMat()
print("Listening for incoming messages.")

while True:
    t_start = time.time()
    raw_msg = socket.recv()
    ocv_mat.ParseFromString(raw_msg)
    img = np.frombuffer(ocv_mat.mat_data, dtype=np.uint8)
    img = img.reshape(ocv_mat.rows, ocv_mat.cols, ocv_mat.channels)

    fps = 1/(time.time()-t_start)
    cv2.imshow('img', img)
    #socket.send(b"Worlddddd")
    print(fps)
    if cv2.waitKey(1) == ord('q'):
        break
    