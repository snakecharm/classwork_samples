package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

type Address struct {
	Street  string
	City    string
	State   string
	ZipCode int
}

type Student struct {
	StudentID int
	Name      string
	Address
}

type Teacher struct {
	EmployeeID int
	Name       string
	Salary     float64
	Address
}

func studentInfo() {
	fmt.Print("Enter Student Name: ")
	reader := bufio.NewReader(os.Stdin)
	input, err := reader.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	input = strings.TrimSpace(input)
	student := Student{Name: input}

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

func TInfo() {
	fmt.Print("Enter Teacher Name: ")
	reader := bufio.NewReader(os.Stdin)
	input, err := reader.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	input = strings.TrimSpace(input)
	teacher := Teacher{Name: input}

	fmt.Print("Enter Employee ID: ")
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
	teacher.EmployeeID = id

	fmt.Print("Enter Salary: ")
	readerSalary := bufio.NewReader(os.Stdin)
	inputSalary, err := readerSalary.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputSalary = strings.TrimSpace(inputSalary)
	salary, err := strconv.ParseFloat(inputSalary, 64)
	if err != nil {
		log.Fatal(err)
	}
	teacher.Salary = salary

	fmt.Print("Enter Teacher Street Address: ")
	readerStreet := bufio.NewReader(os.Stdin)
	inputStreet, err := readerStreet.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputStreet = strings.TrimSpace(inputStreet)
	teacher.Street = inputStreet

	fmt.Print("Enter Teacher City: ")
	readerCity := bufio.NewReader(os.Stdin)
	inputCity, err := readerCity.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputCity = strings.TrimSpace(inputCity)
	teacher.City = inputCity

	fmt.Print("Enter Teacher State: ")
	readerState := bufio.NewReader(os.Stdin)
	inputState, err := readerState.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	inputState = strings.TrimSpace(inputState)
	teacher.State = inputState

	fmt.Print("Enter Teacher Zip Code: ")
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
	teacher.ZipCode = zip

	fmt.Println("Teacher Name: ", teacher.Name)
	fmt.Println("Teacher ID: ", teacher.EmployeeID)
	fmt.Println("Salary: ", teacher.Salary)
	fmt.Println("Street Address: ", teacher.Street)
	fmt.Println("City, State, Zip: ", teacher.City, ",", teacher.State, ",", teacher.ZipCode)
}

func main() {
	fmt.Print("Are you entering a Student or a Teacher? ")
	reader := bufio.NewReader(os.Stdin)
	input, err := reader.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	input = strings.TrimSpace(input)
	if input == "Student" {
		studentInfo()
	} else {
		TInfo()
	}
}
