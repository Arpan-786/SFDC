public class PenDiscount {
    
     public static void fnupddiscount(list<Pen__C> Penlist)
    {
      if(trigger.isbefore == true && trigger.isupdate == true)  
            for (Pen__c P: Penlist)
            {
            if(P.Pen_Cost__c > 100)
            {
            P.Pen_cost__c = P.Pen_cost__c - 20;
            }
            }   
       if(trigger.isbefore == true && trigger.isinsert == true)
        {        
            for (Pen__c P: Penlist)
            {        
            P.Comments__c = 'Newly Created Pen Record';        
            }    
            system.debug('Before insert function got called');
            
        }  
        if(trigger.isbefore == true && trigger.isupdate == true)
        {        
            for (Pen__c P: Penlist)
            {        
            P.Comments__c = 'Pen Records is updated';        
            }    
            system.debug('Before update function is called');
            
        } 
        
    }   
    
}