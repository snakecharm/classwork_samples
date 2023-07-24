using System;
using System.Collections.Generic;
using System.Text;

class Singleton
{
    private Singleton() { }

    private static Singleton _instance;

    public static Singleton Instance
    {
        get
        {
			if (_instance == null)
            {
                _instance = new Singleton();
            }
            return _instance;
        }
    }

    public int GetThree()
    {
        return 3;
    }
}
