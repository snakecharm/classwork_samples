package school

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
