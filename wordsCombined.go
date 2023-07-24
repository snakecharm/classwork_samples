package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	fmt.Print("Enter several words separated by spaces. Hit enter when complete: ")

	inputs := bufio.NewScanner(os.Args[0:])
	var words []string
	for _, input := range inputs {

		words = append(words, input)
	}
	fmt.Println("Here are the list of words you entered:")
	fmt.Println(strings.Join(words, ", "))
}
