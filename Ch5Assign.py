L = int(input("Length of Yard: "))
W = int(input("Width of Yard: "))
SC = 3 #cost of Sod per Sqft.
def CPY(CPY): #Cost Per Yard
    CPY = (L * W)/SC
    return CPY
print("The Cost to Sod Your Lawn is: $", round(CPY(CPY), 2))
