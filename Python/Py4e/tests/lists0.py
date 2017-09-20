abc = 'With three words or four'
stuff = abc.split()
print(stuff)
print(len(stuff))
print(stuff[1])
print('\n')
for i in stuff:
    print(i)

line = 'A lot'
etc = line.split()
print(etc)
line = 'first;second;third;fourth'
thing = line.split()
print(thing)
print(len(thing))
thing = line.split(';')
print(thing)
print(len(thing))

# parsing

fhand = open('mbox-short.text')
for line in fhand:
    line = line.rstrip()
    if not line.startswith('From '):continue
    words = line.split()
    print(words[2])

# double split

words = line.split()
email = words[1]
pieces = email.split('@')
print(pieces[1])
