# Slicing strings

s = "Monthy Python"
print(s[1:6])

b = "Concatinating"
c = "Strings"

print(b + c)
print(b+' '+c)

greet = 'Hello Bob'
print(greet)
zap = greet.lower()
print(zap)

sgreet = greet.replace('Bob', 'Aris')
print(sgreet)
l = sgreet.lower()
print(l)

# Stripping strings

bonjour = '    Marcel en force'
'''bonjour.lstrip()
bonjour.rstrip()
bonjour.strip()
'''
print(bonjour)
