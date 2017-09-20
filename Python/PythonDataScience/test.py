from sklearn import tree
# Height, weight , shoe size

X = [[181,80,44],[817,95,47],[136,58,57],[189,25,65],[154,64,25],[163,14,58,],[147,65,32],[254,35,89],[154,68,45],[165,47,32],[214,36,45]]

Y = ['male', 'female', 'female', 'male', 'male', 'female', 'male', 'male', 'male', 'male', 'female']

clf = tree.DecisionTreeClassifier()

clf = clf.fit(X, Y)

prediction = clf.predict([[190,70, 25]])

print(prediction)
