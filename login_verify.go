package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

func main() {
	success := false
	for attempt := 3; attempt > 0; attempt-- {

		fmt.Print("Enter Login ID: ")
		loginID := bufio.NewReader(os.Stdin)
		firstInput, err := loginID.ReadString('\n')
		if err != nil {
			log.Fatal(err)
		}
		firstInput = strings.TrimSpace(firstInput)
		login := verifyLogin("admin", firstInput)

		fmt.Print("Enter Password: ")
		password := bufio.NewReader(os.Stdin)
		secondInput, err := password.ReadString('\n')
		if err != nil {
			log.Fatal(err)
		}
		secondInput = strings.TrimSpace(secondInput)
		pass := verifyLogin("Pa$$w0rd", secondInput)

		if login == false && pass == true {
			fmt.Println("Login Incorrect")
			if attempt-1 > 0 {
				fmt.Println("Try again - ", attempt-1, " attemps left")
			} else {
				fmt.Println(attempt-1, " attempts left")
			}
		} else if login == true && pass == false {
			fmt.Println("Password Incorrect")
			if attempt-1 > 0 {
				fmt.Println("Try again - ", attempt-1, " attempts left")
			} else {
				fmt.Println(attempt-1, " attempts left")
			}
		} else if login == false && pass == false {
			fmt.Println("Login and Password Incorrect")
			if attempt-1 > 0 {
				fmt.Println("Try again - ", attempt-1, " attempts left")
			} else {
				fmt.Println(attempt-1, " attempts left")
			}
		} else {
			success = true
			fmt.Println("You have logged in!")
			break
		}
	}
	if !success {
		fmt.Println("Account locked - Contact 800-123-4567")
	}
}

func verifyLogin(correct string, input string) bool {
	if correct == input {
		return true
	}
	return false
}
