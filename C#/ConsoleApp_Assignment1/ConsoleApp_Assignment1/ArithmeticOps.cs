using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment1
{
    class ArithmeticOps
    {
        //1. Write a  Program to assign integer to an array and then print the following
        //a.Average value of Array elements
        //b.Minimum and Maximum value in an array
        public static void Operations()
        {
            Console.Write("Enter the number of elements of in array : ");

            int n = Convert.ToInt32(Console.ReadLine());
            int[] num = new int[n];

            Console.Write("\n");
            for (int i = 0; i < n; i++)
            {
                Console.Write($"Enter the element {i + 1} : ");
                num[i] = Convert.ToInt32(Console.ReadLine());
            }

            Console.Write("\nElements in the array : ");
            for (int i = 0; i < num.Length; i++)
            {
                Console.Write(num[i]+"\t");
            }

            
            int total = 0;
            for (int i = 0; i < num.Length; i++)
            {
                total += num[i];
            }
            //Average
            float avg = total / n;
            Console.WriteLine($"\n\nAverage of numbers in the array : {avg}\n");

            //Maximum number
            Console.WriteLine($"Maximum number in the array : {num.Max()}\n");

            //Minimum number
            Console.WriteLine($"Minimum number in the array : {num.Min()}\n");
        }
        


        static void Main()
        {

            Operations();
            Console.Read();
        }
    }
}
