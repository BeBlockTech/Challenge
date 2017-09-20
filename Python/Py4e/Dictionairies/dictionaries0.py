'''counts = dict()
line = input('Enter a line of text: ')
words = line.split()

print('Words: ', words)
print('Counting...')

for word in words:
    counts[word] = counts.get(word,0) + 1
print('Counts', counts)
'''
jjj = {'chuck' : 1 , 'fred' : 5 , 'marcel' : 8 , 'luna' : 26}
for a,b in jjj.items():
    print(a, b)
