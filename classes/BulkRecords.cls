public class BulkRecords {
    
    public static void fnbulkrecords()
    {
     
     List<pen__C> p = new list<pen__c>();   
        
     Pen__C P1 = new Pen__C();
     P1.name = 'P1' ;
     P1.customer_name__C = 'C1';
     P1.Pen_cost__C = 2; 
        
     Pen__C P2 = new Pen__C();
      P2.name = 'P2';
     // P2.Customer_name__C = 'C2';
      P2.Pen_Cost__c = 3;
        
        Pen__c P3 = new Pen__C();
        P3.name = 'P3';
        P3.customer_name__C = 'C3';
        P3.Pen_cost__C = 4;
        
        P.add(P1);
        P.add(P2);
        p.add(P3);  
        
        List<database.SaveResult> results = database.insert(P,false);
        system.debug('output '  + results);
        
        for( database.SaveResult rs: results)
        {
            
            if(rs.isSuccess() == true)
            {
                system.debug('Processed records id is ' + rs.getid());
            }
            else
            {
                for(database.error er: rs.geterrors())
                {
                    system.debug('Error Field is ' + er.getfields() + ' and error message is ' + er.getmessage());                   
                    
                }
                
            }
            
            
            
        }
        
        
        
    }      
       

}