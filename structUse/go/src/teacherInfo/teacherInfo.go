package teacherInfo

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"school"
	"strconv"
	"strings"
)

func TInfo() {
	fmt.Print("Enter Teacher Name: ")
	reader := bufio.NewReader(os.Stdin)
	input, err := reader.ReadString('\n')
	if err != nil {
		log.Fatal(err)
	}
	input = strings.TrimSpace(input)
	teacher := school.Teacher{Name: input}

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
