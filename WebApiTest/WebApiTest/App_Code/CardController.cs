using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

public class Card
{
    public string CardNumber { get; set; }
    public string ExpDate { get; set; }
}
public class CardController : ApiController
{
   
    public static Boolean leapYear(int yr)
    {
        return ((yr % 4 == 0) && (yr % 100 != 0)) || (yr % 400 == 0);
    }

    public static Boolean primeNumber(int num)
    {
        int k;
        k = 0;
        for (int i = 1; i <= num; i++)
        {
            if (num % i == 0)
            {
                k++;
            }
        }
        if (k == 2)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    // POST api/<controller>
    [HttpPost]
    public string Post(Card obj)
    {     

        var cardType = "";

        if (obj.CardNumber == "0")
        {
            return "Error";
        }
        else if (obj.ExpDate == null)
        {
            return "Error";
        }
        else if (obj.CardNumber.Length != 16)
        {
            return "Error";
        }        
        else
        {
            if (obj.CardNumber.Substring(0, 1) == "3")
            {
                cardType = "JCB";

            }
            else if (obj.CardNumber.Substring(0, 1) == "4")
            {
                cardType = "VISA";
                var str = leapYear(Convert.ToInt32(obj.ExpDate.Substring(1, 4)));
                if (!str)
                {
                    return "Error";
                    
                }

            }
            else if (obj.CardNumber.Substring(0, 1) == "5")
            {
                cardType = "MASTER";
                var result = primeNumber(Convert.ToInt32(obj.ExpDate.Substring(1, 4)));
                
                if (!result)
                {
                    return "Error";

                }

            }
            else cardType = "UNKNOWN";

            return obj.CardNumber + " " + obj.ExpDate + " " + cardType;
        }
    }

   
}
