-- Wagner Riffel <w@9shit.dev>
local tmp, a, b = 0, 0, 1
while tmp < 1779979416004714189 do
	tmp = a + b
	a = b
	b = tmp
	print(string.format("%20d", tmp))
end
