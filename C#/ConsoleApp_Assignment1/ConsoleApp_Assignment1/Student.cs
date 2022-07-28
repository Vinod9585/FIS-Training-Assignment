using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment1
{
    class Student
    {
        //2.Write a program in C# to accept ten marks and display the following
        //a.Total
        //b.Average
        //c.Minimum marks
        //d.Maximum marks
        //e.Display marks in ascending order
        //f.Display marks in descending order
        public static void StudMarks()
        {
            int[] marks = new int[10];


            for (int i = 0; i < 10; i++)
            {
                Console.Write($"Enter the Mark of Student {i + 1} : ");
                marks[i] = Convert.ToInt32(Console.ReadLine());
            }

            Console.WriteLine("\nMarks of students : ");
            for (int i = 0; i < 10; i++)
            {
                Console.Write(marks[i] + "\t");
            }


            int total = 0;
            for (int i = 0; i < marks.Length; i++)
            {
                total += marks[i];
            }

            //Total Marks
            Console.WriteLine($"\n\nTotal Marks : {total}");

            //Average
            float avg = total / 10;
            Console.WriteLine($"Average Marks : {avg}");

            //Maximum number
            Console.WriteLine($"Maximum marks : {marks.Max()}");

            //Minimum number
            Console.WriteLine($"Minimum marks : {marks.Min()}");

            //Ascending Order
            Array.Sort(marks);

            Console.WriteLine("\n\nMarks of students in ascending order : ");
            for (int i = 0; i < 10; i++)
            {
                Console.Write(marks[i] + "\t");
            }

            //Descending Order
            Array.Reverse(marks);

            Console.WriteLine("\n\nMarks of students in descending order : ");
            for (int i = 0; i < 10; i++)
            {
                Console.Write(marks[i] + "\t");
            }
        }

        static void Main()
        {

            StudMarks();
            Console.Read();
        }
    }
}
