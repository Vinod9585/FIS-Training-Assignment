using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment1
{
        //3. Write a C# program which accepts marks of 5 students for C#,HTML and Sql (3 subjects),calculates the average and prints result as passed or failed
        //If avg< 50 then failed else passed.

    class PassFail
    {
        public static void Subject()
        {

            for (int i=0;i<5;i++)
            {
                Console.WriteLine("#############################################################\n");
                Console.WriteLine($"Marks of Student {i+1}\n");

                Console.Write("Enter the mark of C# : ");
                int x = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter the mark of HTML : ");
                int y = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter the mark of SQL : ");
                int z = Convert.ToInt32(Console.ReadLine());

                int total = x + y + z;
                float avg = total / 3;
                
                if(avg<50)
                {
                    Console.WriteLine("\nResult : FAILED\n");
                }
                else
                {
                    Console.WriteLine("\nResult : PASSED\n");
                }

            }

        }
        static void Main()
        {
   
            Subject();
            Console.Read();
        }
    }



}
