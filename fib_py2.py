def fib(num):
	"""
	Fn = Fn-1 + Fn-2
	"""
	if num == 0:
		return 0
	elif num == 1:
		return 1
	else:
		return (fib(num-1) + fib(num-2))

def main():
	num = raw_input("enter a positive integer: ")
	res = fib(int(num))
	print(res)

if __name__ == '__main__':
	main()
