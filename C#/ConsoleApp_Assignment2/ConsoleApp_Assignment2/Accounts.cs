using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment2
{
    class Accounts
    {
        double acc_number;
        string cust_name;
        string acc_type;
        int balance = 10000;

        public Accounts(double acc_number, string cust_name, string acc_type)
        {
            this.acc_number = acc_number;
            this.cust_name = cust_name;
            this.acc_type = acc_type;
        }
        public int Deposit(int amt)
        {
            
            balance += amt;
            return balance;
        }

        public int Withdraw(int amt)
        {
            if (amt > balance)
            {
                return -1;
            }
            else
            {
                balance -= amt;
                return balance;
            }
            
            
        }

        public void ShowData()
        {
            Console.WriteLine("\n################## ACCOUNT DETAILS ##################\n");
            Console.WriteLine($"Customer Name : {cust_name}");
            Console.WriteLine($"Account Number : {acc_number}");
            Console.WriteLine($"Account Type : {acc_type}");
            Console.WriteLine($"Total Balance : {balance}");
            Console.WriteLine("\n#####################################################");
        }
        static void Main(string[] args)
        {
            Accounts acc = new Accounts(1234456543, "Vinod", "Savings");
            string choice = "y";
            while (choice == "y")
            {
                Console.WriteLine("Which action do you perform : 1)Deposit 2)Withdraw 3)Account Details");
                int action = Convert.ToInt32(Console.ReadLine());
                
                if (action == 1)
                {
                    Console.Write("Enter the amount : ");
                    int amt = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine($"\nAmount of Rs.{amt} is deposited into your account and updated balance is {acc.Deposit(amt)}.");
                }
                else if (action == 2)
                {
                    Console.Write("Enter the amount : ");
                    int amt = Convert.ToInt32(Console.ReadLine());
                    int b = acc.Withdraw(amt);
                    if (b != -1)
                    {
                        Console.WriteLine($"\nAmount of Rs.{amt} is withrawed from your account and updated balance is {b}.");
                    }
                    else { Console.Write("\nInsufficient Balance"); }

                }
                else
                {
                    acc.ShowData();
                }

                Console.Write("\n\nDo you want to continue? (y/n) : ");
                choice = Console.ReadLine();
                Console.Write("\n");

            }
            Console.ReadLine();
        }
    }
}
