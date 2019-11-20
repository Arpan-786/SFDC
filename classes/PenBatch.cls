global class PenBatch implements database.Batchable<sObject>, database.Stateful {
    
    global database.QueryLocator start(database.BatchableContext bc)
    {
        string qry = 'select id,Pen_cost__C from Pen__C where Pen_cost__C > 0';
        return database.getQueryLocator(qry);
    }

    
    global void execute(database.BatchableContext bc, list<Pen__C> scope)
    {
        
        integer count = 0;
        for (Pen__C p : scope)
        {
            if(p.Pen_cost__C > 100)
            {
                p.pen_cost__C = 0;
                count = count + 1;
            }           
            
            
        }
            update scope;
        system.debug('1total records updated ' + count );
        
    }
    
    global void finish(database.BatchableContext bc)
    {
        //code to send sms
        
    }
    
    
    
}