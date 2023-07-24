#!/usr/bin/python

amount = input("Please enter a monetary amount: ")
dollars =int(amount//1)
quarters = int((amount - dollars)//.25)
dimes = int((amount - dollars)%.25//.10)
nickels = int((amount - dollars)%.25%.10//.05)
pennies = int((amount - dollars)%.25%.10%.05//.01)

print("The amount of $" + str(amount) + " has:")
print(str(dollars) + " dollars")
print(str(quarters) + " quarters")
print(str(dimes) + " dimes")
print(str(nickels) + " nickels")
print(str(pennies) + " pennies")




