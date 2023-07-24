import random
import math

dailywindspeed = []
speed = 30
days = 0

random.seed(42)
while days < 14:
    
    dailywindspeed.append(int(random.random()*30 +1))
    days = days + 1

def ave(array):
    sum = 0
    for x in array:
        sum = sum + x
    length = len(array)
    average = sum/length
    return average
def maximum(array):
    max = 0
    maxlist = 0
    for x in array:
        if x >= max:
            max = x
    for x in array:
        if x == max:
            maxlist = maxlist + 1
    return [max, maxlist]
def minimum(array):
    min = 40
    minlist = 0
    for x in array:
        if x <= min:
            min = x
    for x in array:
        if x == min:
            minlist = minlist + 1
    return [min, minlist]

print("Windspeed for 14 days: ")
day = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
for index in day:
    print("Day:", day[index - 1], "Wind Speed: ", dailywindspeed[index - 1], "miles per hour")
    
    
print("The Maximum Windspeed was ",maximum(dailywindspeed)[0], "miles per hour on day ", dailywindspeed.index(maximum(dailywindspeed)[0])+1," on ", maximum(dailywindspeed)[1], " day(s)")
print("The Minimum Windspeed was ",minimum(dailywindspeed)[0], "miles per hour on day ", dailywindspeed.index(minimum(dailywindspeed)[0])+1," on ", minimum(dailywindspeed)[1], " day(s)")
print("The Average wind speed was ", ave(dailywindspeed), "miles per hour")
print("The difference between the highest wind speed and the average is ", maximum(dailywindspeed)[0] - ave(dailywindspeed))
