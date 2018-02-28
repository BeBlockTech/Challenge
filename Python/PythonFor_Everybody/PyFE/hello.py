print("hello world")

x = 5
if x < 10:
	print('Smaller')
if x > 20:
	print('Way Bigger')

print('Finis')

y = 10
while y > 0:
	print(y)
	y = y - 1
print('BlastOff!')

# Floor converter
inp = input('Eu floor? ')
usf = int(inp) - 1
print('US floor', usf)

# Rate calculator
hour = input('Enter Hours: ')
rate = input('Enter Rate: ')
total = float(hour) * float(rate) 
print('Your total is:', total)