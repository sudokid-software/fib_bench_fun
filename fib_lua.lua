-- Wagner Riffel <wgrriffel at gmail d𝞱t com>
local a, b = 0, 1
for i=1, 90 do
	print(string.format("%20d", a))
	local tmp = a + b
	a = b
	b = tmp
end
