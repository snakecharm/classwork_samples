package studentInfo

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"school"
	"strconv"
	"strings"
)

func Info() {
	fmt.Print("Enter Student Name: ")
	reader := bufio.NewReader(os.Stdin)
	input, err := reader.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	input = strings.TrimSpace(input)
	student := school.Student{Name: input}

	fmt.Print("Enter Student ID: ")
	readerID := bufio.NewReader(os.Stdin)
	inputID, err := readerID.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputID = strings.TrimSpace(inputID)
	id, err := strconv.Atoi(inputID)
	if err != nil {
		log.Fatal(err)
	}
	student.StudentID = id

	fmt.Print("Enter Student Street Address: ")
	readerStreet := bufio.NewReader(os.Stdin)
	inputStreet, err := readerStreet.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputStreet = strings.TrimSpace(inputStreet)
	student.Street = inputStreet

	fmt.Print("Enter Student City: ")
	readerCity := bufio.NewReader(os.Stdin)
	inputCity, err := readerCity.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputCity = strings.TrimSpace(inputCity)
	student.City = inputCity

	fmt.Print("Enter Student State: ")
	readerState := bufio.NewReader(os.Stdin)
	inputState, err := readerState.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputState = strings.TrimSpace(inputState)
	student.State = inputState

	fmt.Print("Enter Student Zip Code: ")
	readerZip := bufio.NewReader(os.Stdin)
	inputZip, err := readerZip.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputZip = strings.TrimSpace(inputZip)
	zip, err := strconv.Atoi(inputZip)
	if err != nil {
		log.Fatal(err)
	}
	student.ZipCode = zip

	fmt.Println("Student Name: ", student.Name)
	fmt.Println("Student ID: ", student.StudentID)
	fmt.Println("Student Address: ", student.Street)
	fmt.Println("Student City, State, Zip: ", student.City, ",", student.State, ",", student.ZipCode)
}
