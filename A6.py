days = ["M","T", "W", "TH","F"]
price = int(input("Enter the starting price: "))

for days in days:
    price = price - price * .1
    print("The price of sunglasses on ", days, " is " ,price)
