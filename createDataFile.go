package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"os"
	"sort"
)

func fileExists(fileName string) (*os.File, error) {
	_, err := os.Stat(fileName)
	if err == nil {
		return nil, err
	}
	return os.Open(fileName)
}

func createFile(fileName string) (*os.File, error) {
	fmt.Println("Creating File: ", fileName)
	return os.Create(fileName)
}

func main() {

	employees := [][]string{
		{"Mark", "36", "54000"},
		{"Adam", "61", "86000"},
		{"Erica", "24", "38000"},
		{"Clark", "42", "47500"},
	}

	sort.SliceStable(employees, func(i, j int) bool {
		return employees[i][0] < employees[j][0]
	})

	fileExists("employee.csv")

	file, err := createFile("employee.csv")
	if err != nil {
		log.Fatal(err)
	}

	defer file.Close()

	writeCsv := csv.NewWriter(file)
	for _, employee := range employees {
		_ = writeCsv.Write(employee)
	}
	writeCsv.Flush()

}
