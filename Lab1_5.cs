using System;
using System.Collections.Generic;
using System.Text;

class FunctionalMethods
{
    public static Func<int, int, int, int> LoneSum()
    {
	  Func<int, int, int, int> toReturn = (a, b, c) => a == b ? c : b == c ? a : a == c ? b : a + b + c;
		return toReturn;
    }

   public static Predicate<int> IsPositive()
   {
		Predicate<int> toReturn = x => x > 0;
        return toReturn;
    }
}
