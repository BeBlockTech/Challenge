# Finding the smallest number

smallest = None
print('Before')
for value in [9, 24, 12, 57, 6, 32, 2] :
    if smallest is None :
        smallest = value
    elif value < smallest :
        smallest = value
    print(smallest, value)
print('After', smallest)
