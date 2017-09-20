# How to Find the Smallest value

largest_so_far = -1
print('Before', largest_so_far)
for the_num in [1, 99, 24, 25, 56, 4, 57, 89, 5, 94, 21] :
    if the_num > largest_so_far :
        largest_so_far = the_num
    print(largest_so_far, the_num)

print('After', largest_so_far)
