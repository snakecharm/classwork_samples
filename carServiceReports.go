package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"os"
)

type Car struct {
	year    int
	make    string
	model   string
	license string
	vin     string
}

type Technician struct {
	employeeID int
	name       string
}

type Customer struct {
	customerID int
	name       string
	Car
}

func addCar(year int, make string, model string, license string, vin string) *Car {
	c := Car{
		year:    year,
		make:    make,
		model:   model,
		license: license,
		vin:     vin,
	}
	return &c
}

func addTechnician(employeeID int, name string) *Technician {
	t := Technician{
		employeeID: employeeID,
		name:       name,
	}
	return &t
}

func addCustomer(customerID int, name string, year int, make string, model string, license string, vin string) *Customer {
	cu := Customer{
		customerID: customerID,
		name:       name,
		Car: Car{
			year:    year,
			make:    make,
			model:   model,
			license: license,
			vin:     vin,
		},
	}
	return &cu
}

func createFile(fileName string) (*os.File, error) {
	fmt.Println("Creating File: ", fileName)
	return os.Create(fileName)
}

func check(err error) {
	if err != nil {
		log.Fatal(err)
	}
}

func dateSearch(date string, r [][]string) {
	for report := range r {
		if date == r[report][0] {
			fmt.Println(r[report][0], r[report][1], r[report][2], r[report][3], r[report][4], r[report][5])
		}
	}
}

func main() {
	report := [][]string{
		{"Date", "Customer ID", "Customer", "Car", "Technician", "Service"},
		{"2/20/2021", "1", "Clair Redford", "2015 Toyota Corrolla", "Dave", "Repair"},
		{"1/5/2022", "2", "Adam Morrel", "2011 Nissan Rogue", "Mark", "Car Wash"},
		{"10/2/2021", "3", "Mark Waters", "1998 Ford F-150", "Ben", "Oil Change"},
		{"4/15/2021", "4", "Ashley Danvers", "2019 Honda CR-V", "Mark", "Oil Change"},
		{"7/8/2021", "5", "Richard Cooke", "2021 BMW M4", "Ben", "Repair"},
		{"3/23/2021", "6", "Mary Anderson", "2014 Chrysler Pacifica", "Mark", "Car Wash"},
		{"2/18/2021", "7", "Debbie Cane", "2018 Kia Soul", "Dave", "Oil Change"},
		{"9/21/2021", "8", "Eric Randall", "2005 Hyundai Elantra", "Dave", "Oil Change"},
		{"5/23/2021", "9", "Tyler Perry", "1999 Subaru Forrester", "Ben", "Oil Change"},
	}

	file, err := createFile("carReport.csv")
	check(err)

	defer file.Close()

	writeCsv := csv.NewWriter(file)
	for _, reportLines := range report {
		_ = writeCsv.Write(reportLines)
	}
	writeCsv.Flush()

	dateSearch("2/20/2021", report)

}
