prev = 0
curr = 1
output = ""
for i in range(90):
    output += f"{prev:20}\n"
    tmp = curr + prev
    prev = curr
    curr = tmp
print(output, end='')

