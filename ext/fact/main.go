package main

import (
	"C"
)

//export factorial_func
func factorial_func(x uint) uint {
	if x == 0 {
		return 1
	}

	return x * factorial_func(x-1)
}

func main() {}