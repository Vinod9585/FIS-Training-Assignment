using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment2
{
    class Student
    {

        int roll_no;
        string name;
        string clas;
        string sem;
        string branch;
        int[] marks = new int[5];


        public Student(int roll_no,string name,string clas,string sem,string branch)
        {
            this.roll_no = roll_no;
            this.name = name;
            this.clas = clas;
            this.sem = sem;
            this.branch = branch;
        }
        public void DisplayResult(int[] arr)
        {
            int total = 0;
            for(int i=0;i<arr.Length;i++)
            {
                total += arr[i];
            }

            float avg = total / arr.Length;

            Console.WriteLine($"Average : {avg}");

            for (int j=0;j<arr.Length;j++)
            {
                if(arr[j]<35)
                {
                    Console.WriteLine("Result : FAILED");
                    break;
                }
                else if(arr[j]>35 && j==arr.Length-1 && avg<50)
                {
                    Console.WriteLine("Result : FAILED");
                }
                else if (j == arr.Length - 1 && avg > 50)
                {
                    Console.WriteLine("Result : PASSED");
                }

            }
            
        }

        public void DisplayData()
        {
            Console.WriteLine("#################### STUDENT DETAILS ####################\n");
            Console.WriteLine($"Name : {name}");
            Console.WriteLine($"Roll Number : {roll_no}");
            Console.WriteLine($"Class : {clas}");
            Console.WriteLine($"Sem : {sem}");
            Console.WriteLine($"Branch : {branch}");
            
            
        }

        public static void Main()
        {
            Student s = new Student(123, "Vinod", "TE", "Fifth", "Comp");

            int[] marks = { 90, 90, 90, 37, 34, 37 };
            s.DisplayData();
            s.DisplayResult(marks);
            Console.WriteLine("\n##########################################################\n");
            Console.Read();
        }

    }
}
