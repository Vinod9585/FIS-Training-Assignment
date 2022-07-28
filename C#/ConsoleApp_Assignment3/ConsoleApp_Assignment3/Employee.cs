using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment3
{
    class Employee
    {
        
        public string empid { get; set; }
        public string name { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string dept { get; set; }

        private int salary = 50000;
        public int Salary
        {
            get { return salary; }
        }
        public virtual int GetSalary()
        {
            return salary;
        }
    }

    class ContractEmployee : Employee
    {
        public int perks { get; set; }

        public override int GetSalary()
        {
            
            return Salary+perks;
        }
    }

    class PermanentEmployee : Employee
    {
        public int provfund { get; set; }
        public int leaves { get; set; }

        public override int GetSalary()
        {
            return Salary - provfund;
        }
    }

    class EmpSalary
    {
        static void Main()
        {
            Employee e = new Employee();
            //e.empid = "e123";
            //e.name = "Vinod";
            //e.address = "Ahmednagar";
            //e.city = "Karjat";
            //e.dept = "IT";

            string choice = "y";
            while (choice == "y")
            {
                Console.Write("Enter the Employee ID : ");
                e.empid = Console.ReadLine();
                Console.Write("Enter the Employee Name : ");
                e.name = Console.ReadLine();
                Console.Write("Enter the Address : ");
                e.address = Console.ReadLine();
                Console.Write("Enter the City : ");
                e.city = Console.ReadLine();
                Console.Write("Enter the Department : ");
                e.dept = Console.ReadLine();
                

                Console.WriteLine("Enter the type of employee : 1)Contract-Based 2)Permanent ");
                int type = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("\n\n######################## EMPLOYEE DETAILS ########################\n");
                Console.WriteLine($"Name : {e.name}");
                Console.WriteLine($"Employee ID : {e.empid}");
                Console.WriteLine($"Address : {e.address}");
                Console.WriteLine($"City : {e.city}");
                Console.WriteLine($"Department : {e.dept}");

                if (type == 1)
                {
                    ContractEmployee ce = new ContractEmployee();
                    Console.Write("Enter perks amount: ");
                    ce.perks = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine($"Salary : {ce.GetSalary()}");
                }
                else
                {
                    PermanentEmployee pe = new PermanentEmployee();
                    Console.Write("Enter Number of leaves : ");
                    pe.leaves = Convert.ToInt32(Console.ReadLine());
                    Console.Write("Enter Provident Fund : ");
                    pe.provfund = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine($"Number of leaves : {pe.leaves}");
                    Console.WriteLine($"Salary : {pe.GetSalary()}");
                }

                Console.WriteLine("\n##################################################################");

                Console.Write("\nDo you want to continue? (y/n) : ");
                choice = Console.ReadLine();
                Console.WriteLine("");
         
            }
            Console.ReadLine();
        }
    }
}
