from sys import argv

script, filename = argv

print "We are going to erase %r." % filename
print "if you dont want that, hit CTRL-C (^C)."
print "If you do want, hit RETURN."

raw_input("?")

print "Opening the file..."
target = open(filename, 'w')

print "Truncating the file. Goodbye!"
target.truncate()

print "Now I'm gonna ask you for three lines."

line1 = raw_input("line1: ")
line2 = raw_input("line2: ")
line3 = raw_input("line3: ")

print "Now I'm going to write those to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write("line3")
target.write("\n")

print "And finally, we can close it."
target.close()