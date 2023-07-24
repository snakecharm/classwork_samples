using System;

interface IPerson
{
    int PayMoney(int amount);
}

class Person : IPerson
{
    public int Money { get; set; }

    public Person()
    {
        Money = 10000;
    }

    public virtual int PayMoney(int amount)
    {
        Money = Money - amount;
        return Money;
    }
}

class Employee : Person
{
    public int EmployeeID { get; set; }

    public Employee(int employeeID) : base()
    {
        EmployeeID = employeeID;
    }

    public override int PayMoney(int amount)
    {
        amount = amount/2;
        Money = Money - amount;
        return Money;
    }

    public static void AddMoney(Person person, int amount)
    {
        person.Money = person.Money + amount;
    }
}