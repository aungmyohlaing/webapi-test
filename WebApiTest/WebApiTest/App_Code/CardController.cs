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
   

    // POST api/<controller>
    [HttpPost]
    public string Post(Card obj)
    {
        var cardType="";

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

            }
            else if (obj.CardNumber.Substring(0, 1) == "5")
            {
                cardType = "MASTER";

            } else cardType = "UNKNOWN";      
             
            return obj.CardNumber + " " + obj.ExpDate + " " + cardType;
        }
    }

   
}
