def main():
    n = 90
    p = 0
    q = 1
    for i in range(n):
        fib = p + q
        p = q
        q = fib
        print("{:20}".format(p))

if __name__ == '__main__':
    main()
