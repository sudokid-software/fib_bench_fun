package main

import "fmt"

func main() {
	var (
		a, b, tmp uint64
	)

	b = 1
	for tmp < 1779979416004714189 {
		tmp = a + b
		a = b
		b = tmp
		fmt.Printf("%20d\n", tmp)
	}
}

