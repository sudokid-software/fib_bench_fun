// donutX3
using System;
using System.Collections.Generic;

namespace CSharpMasterRaceFib
{
    class Program
    {
        static IEnumerable<ulong> FibYield(ulong count)
        {
            ulong one = 0, two = 1, tmp;

            while (count > 0)
            {
                yield return one;
                tmp = two;
                two += one;
                one = tmp;
                
                count--;
            }
        }
        
        static void Main(string[] args)
        {
            foreach (var x in FibYield(90))
            {
                Console.WriteLine(x.ToString().PadLeft(20));
            }
        }
    }
}

