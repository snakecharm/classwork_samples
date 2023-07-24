package main

import (
	"fmt"
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

func studentInfo(StudentID int, Name string, Street string, City string, State string, ZipCode int) *Student {
	s := Student{
		StudentID: StudentID,
		Name:      Name,
		Address: Address{
			Street:  Street,
			City:    City,
			State:   State,
			ZipCode: ZipCode,
		},
	}

	fmt.Println("Student Name: ", s.Name)
	fmt.Println("Student ID: ", s.StudentID)
	fmt.Println("Student Address: ", s.Street)
	fmt.Println("Student City, State, Zip: ", s.City, ",", s.State, ",", s.ZipCode)
	return &s
}

func teacherInfo(EmployeeID int, Name string, Salary float64, Street string, City string, State string, ZipCode int) *Teacher {
	t := Teacher{
		EmployeeID: EmployeeID,
		Name:       Name,
		Salary:     Salary,
		Address: Address{
			Street:  Street,
			City:    City,
			State:   State,
			ZipCode: ZipCode,
		},
	}
	fmt.Println("Teacher Name: ", t.Name)
	fmt.Println("Teacher ID: ", t.EmployeeID)
	fmt.Println("Salary: ", t.Salary)
	fmt.Println("Street Address: ", t.Street)
	fmt.Println("City, State, Zip: ", t.City, ",", t.State, ",", t.ZipCode)
	return &t
}

func main() {
	studentInfo(1234, "Amy Goode", "123 Main St", "Maintown", "PA", 10245)
	fmt.Println()
	teacherInfo(6543, "Matthew Winters", 64350, "456 1st St", "Anytown", "TX", 58423)
}
