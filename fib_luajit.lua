local tmp, a, b = 0, 0, 1
while tmp < 1779979416004714189 do
	print(string.format("%20d", tmp))
	tmp = a + b
	a = b
	b = tmp
end
