vector1 = [1,2,3] #first line of grid
vector2 = [4,5,6] #second line of grid
vector3 = [7,8,9] #third line of grid
grid = []
grid.append(vector1)
grid.append(vector2)
grid.append(vector3)
print("Grid matrix ", grid)
for x in [0,1,2]: #cycle through all elements and prints them out
    for y in [0,1,2]:
        print("x-axis ",x, "y-axis ",y, "Value at that point: ", grid[x][y])
        
customers = ["Kim", "Gene", "Lee", "Sandy"] #corelated arrays
spending = [488,450,300,520] #related to each other
cutoff = 400 #Amount needed to be a good customer
for index in [0,1,2,3]:
    if spending[index] > cutoff:
        print("Good Customer: ", customers[index],"Amount spent: $", spending[index])
def avg(spendingList):
    s = 0 #initializing the sum of the array
    for x in spendingList:
        s = s + x
    size = len(spendingList) #the length or size of the array
    average = s/size
    return average
res = avg(spending)
print("The average amount spent: ",res)

import random
random.seed(42)
windspeed = []
for x in range(14):
    w = random.randint(0,45) # return random windspeed number between 0 and 45
    windspeed.append(w)
res = avg(windspeed)#uses previous average function defined above
print("Windspeeds for 14 days: ", windspeed)
print("Average Wind Speed: ", res)
Buy = 0 #initalize numbers of people buying and not buying to zero
noBuy = 0
for x in range(100):
    r = random.random()
    if r >= 0.8:
        noBuy = noBuy + 1
    else:
        Buy = Buy + 1
print("The number of customers who will buy: ", Buy)
print("The number of customers who will not buy: ", noBuy)
gradeFrequency = [0,0,0,0,0] #initialization of the gradeFrequency array
grades = [ 1,1,1,2,0,4,4,4,4,3,3,1,1]
for x in grades:
    gradeFrequency[x] = gradeFrequency[x] + 1
index = 0
while index <5:
    print("The number of students with grade ", index ," is ",gradeFrequency[index])
    index = index +1
