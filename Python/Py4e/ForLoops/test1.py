# Find the largest number
largest_so_far = -1
print('Before', largest_so_far)
for the_num in [9, 55, 24, 3 , 59, 78, 157, 589, 1981, 8, 1] :
    if the_num > largest_so_far :
        largest_so_far = the_num
    print(largest_so_far, the_num)

print('After', largest_so_far)
