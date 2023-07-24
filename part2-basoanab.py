#!/usr/bin/python

import math

point1 = input("Please enter x1 and y1 for point 1: ")
point2 = input("Please enter x2 and y2 for point 1: ")

distance = math.sqrt((point2[0] - point1[0])**2 + (point2[1] - point1[1])**2)
distance = round(distance, 1)

print("The distance between " + str(point1) + " and " + str(point2) + " is \
" + str(distance))
