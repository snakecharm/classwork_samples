import random
Buy = 0
noBuy = 0
for customer in range(100):
    customer = int(random.random()*100 + 1)
    if customer < 20:
       Buy = Buy + 1
    else:
        noBuy = noBuy + 1
print("Out of 100 customers, the number that will buy is, ", Buy, " and the number that will not buy is ", noBuy)
