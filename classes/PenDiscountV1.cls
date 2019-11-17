public class PenDiscountV1 {
    
    
    public static void fnapplydiscount(List<Pen__C> Penlist)
    {
     /*   for(Pen__C P : Penlist)
    {
        if(P.Pen_cost__C > 100 &&  P.Pen_Cost__C < 200)        {
            P.Pen_cost__C = P.Pen_cost__C - 20;
        }
        else if(P.Pen_cost__C > 50  && P.Pen_cost__C < 100)        {
            P.Pen_cost__C = P.Pen_cost__C - 10;
        }
        else if(P.Pen_cost__C < 50 && P.Pen_cost__C > 10)        {
            P.Pen_cost__C = P.Pen_cost__C - 5;
        }
        else if (P.Pen_cost__C < 10)        {
            P.Pen_Cost__c.addError('Price of the Pen is too low.Kindly add a value bigger that 10');
            
        }
        }*/  
        
    } 

  public static void fnapplydiscountupdate(List<Pen__C> Penlist)
  {
      
      for (Pen__C P : Penlist)
      {
        if (P.Pen_Cost__c>100)  
            P.Pen_Cost__c = P.Pen_Cost__c - 20;
      }
      
  }

    

}