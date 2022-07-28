using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_Assignment1
{
    //Strings Assignment (use string class functions)

    //1.	Write a program in C# to accept a word from the user and display the length of it.
    //2.	Write a program in C# to accept a word from the user and display the reverse of it. 
    //3.	Write a program in C# to accept two words from user and find out if they are same.
    class StrOps
    {

        static void Main()
        {
            Console.Write("Enter the string : ");
            string s = Console.ReadLine();

            //1.	Write a program in C# to accept a word from the user and display the length of it.

            Console.WriteLine($"\nLength : {s.Length}");

            Console.WriteLine("\n###############################################################################\n");

            //2. Write a program in C# to accept a word from the user and display the reverse of it.

            string reverse = "";
            for (int a = s.Length - 1; a >= 0; a--)
            {
                reverse = reverse + s[a];
            }

            Console.WriteLine($"Reverse string : {reverse}");

            Console.WriteLine("\n###############################################################################\n");

            //3. Write a program in C# to accept two words from user and find out if they are same.
            Console.Write("Enter the string 1 : ");
            string s1 = Console.ReadLine();

            Console.Write("Enter the string 2 : ");
            string s2 = Console.ReadLine();
            
            if(Equals(s1,s2))
            {
                Console.WriteLine("s1 and s2 are same");
            }
            else 
            { 
                Console.WriteLine("s1 and s2 are different"); 
            }

            Console.WriteLine("\n###############################################################################\n");

            Console.Read();
        }
    }
}
