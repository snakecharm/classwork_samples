package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

/*
func continueInput(user string) bool {
	if user == "Y" || user == "y" {
		return true
	} else {
		return false
	}
}*/

func main() {

	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter a word: ")
	input, err := reader.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	input = strings.TrimSpace(input)
	var words []string

	words = append(words, input)
	//end := true
	for {
		fmt.Print("Continue? [Y/N]: ")
		inputContinue, err := reader.ReadString('\n')
		if err != nil {
			log.Fatal(err)
		}
		inputContinue = strings.TrimSpace(inputContinue)
		// end = continueInput(inputContinue)

		if inputContinue == "Y" {
			fmt.Print("Enter another word: ")
			input, err := reader.ReadString('\n')
			if err != nil {
				log.Fatal(err)
			}
			input = strings.TrimSpace(input)
			words = append(words, input)
		} else {
			break
		}
	}
	fmt.Println("Words in this string: ", strings.Join(words, ", "))

}
