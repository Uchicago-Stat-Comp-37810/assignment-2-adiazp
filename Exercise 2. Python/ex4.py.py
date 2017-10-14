cars=100 #Number of cars is 100
space_in_a_car=float(4) #Each car has up to 4 spots, including the driver
drivers=30 #There are 30 drivers available
passengers=90 #There are 90 people who want to travel (besides the 30 drivers)
cars_not_driven=cars-drivers #Idle cars
cars_driven=drivers #Each driver can only drive a single car
carpool_capacity=cars_driven*space_in_a_car #Since there are 30 active cars and each of them can carry up to 4 persons (including the 30 drivers), the carpool capacity is 120
average_passengers_per_car=passengers/cars_driven #There are 90 passengers for 30 cars, so each active car will have 3 passengers and 1 driver
print("There are",cars,"available.")
print("There are only",drivers,"drivers available.")
print("There will be",cars_not_driven,"empty cars today.")
print("We can transport",carpool_capacity,"people today.")
print("We have",passengers,"to carpool today.")
print("We need to put about",average_passengers_per_car,"in each car.")
#The mistake on line 8 originates because carpool_capacity had not been defined.
#1. No, it is not necessary to use 4.0 (or float(4)). That is only a format change.
#6. Use of Python as a calculator
x1=1
x2=2
x3=3
x4=4
x5=5
print(x1+x2+x3+x4+x5)
