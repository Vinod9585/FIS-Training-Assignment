using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment3
{
    abstract class Student
    {
        public string name;
        public int id;
        public int grade;

        public abstract Boolean IsPassed(int grade);
    }

    class Undergraduate : Student
    {
        public override bool IsPassed(int grade)
        {
            if (grade > 70)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }

    class Graduate : Student
    {
        public override bool IsPassed(int grade)
        {
            if (grade > 80)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }

    class AbstractProblem
    {
        static void Main()
        {
            Student s = new Undergraduate();
            string flag = "y";
            while (flag == "y")
            {
                Console.Write("Enter the name of the student : ");
                s.name = Console.ReadLine();

                Console.Write("\nEnter the Student ID : ");
                s.id = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("\nEnter the type of Education : 1)Undergraduate 2)Graduate");
                int choice = Convert.ToInt32(Console.ReadLine());

                Console.Write("\nEnter the grade of studnet : ");
                s.grade = Convert.ToInt32(Console.ReadLine());


                
                Console.WriteLine("\n################### STUDENT DETAILS ################\n");
                Console.WriteLine($"Student Name : {s.name}");
                Console.WriteLine($"Student ID : {s.id}");
                Console.WriteLine($"Student's Grade : {s.grade}");

                if (choice == 1)
                {
                    Undergraduate ug = new Undergraduate();
                    if (ug.IsPassed(s.grade))
                    {
                        Console.WriteLine("Result : PASSED");
                    }
                    else
                    {
                        Console.WriteLine("Result : FAILED");
                    }
                }
                else
                {
                    Graduate g = new Graduate();
                    if (g.IsPassed(s.grade))
                    {
                        Console.WriteLine("Result : PASSED");
                    }
                    else
                    {
                        Console.WriteLine("Result : FAILED");
                    }
                }

                Console.WriteLine("\n####################################################");

                Console.Write("\nDo you want to continue? (y/n) : ");
                flag = Console.ReadLine();
                Console.WriteLine("");
            }
            Console.Read();
        }
    }
}
