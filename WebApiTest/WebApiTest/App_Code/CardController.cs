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
        if (obj.CardNumber == "0")
        {
            return "Please Enter Card Number.";
        }
        else
        {
            return obj.CardNumber + obj.ExpDate;
        }
    }

   
}
