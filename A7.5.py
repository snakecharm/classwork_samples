import random
counter = int(input("Enter number of times coin is flipped: "))
while counter > 0:
    coin = int(random.random()*2 + 1)
    if coin == 1:
        print("The coin has come up Heads.")
    else:
        print("The coin has come up Tails.")
    counter = counter - 1
