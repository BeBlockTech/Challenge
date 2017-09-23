from sys import argv

script, user_name = argv
prompt = '> '

print "Hi %s, I'm the %s script." % (user_name, script)
print "I'd like to ask you a few questions."
print "Do you like me %s?" % user_name
like = raw_inut(prompt)

print "Wher do you live %s?" % user_name
lives = raw_iput(prompt)

print "What kind of computer do you have?" % user_name
computer = raw_iput(prompt)

print """
Alright, so you said %r about liking me.
You live in %r. Not sure where that is.
And you have a %r computeer. Nice.
""" % (like, lives, computer)