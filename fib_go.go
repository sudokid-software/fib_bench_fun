// Wagner Riffel <wgrriffel at gmail d𝞱t com>
package main

import "fmt"

func main() {
	var (
		a, b uint64
	)

	b = 1
	for i := 0; i < 90; i++ {
		fmt.Printf("%20d\n", a)
		tmp := a + b
		a = b
		b = tmp
	}
}
