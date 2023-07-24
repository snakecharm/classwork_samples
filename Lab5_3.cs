using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

class LinqQuery
{
    public static int GetThirdEven(List<int> numbers)
    {
        int answer = numbers.Where(n => n % 2 == 0).Skip(2).First();
        return answer;
    }
}
