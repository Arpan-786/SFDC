trigger ContactCountOnAccount on Contact(after insert, after update,  before delete, after delete)
{
     // system.debug('Contact is created2' + Trigger.newMap.get());
    
    if((trigger.isafter == true && trigger.isinsert == true) || (trigger.isafter == true && trigger.isupdate ==true))
    {
        system.debug('Contact is created ' + Trigger.new );
        system.debug('Contact is created2' + Trigger.newMap.Keyset());
        ContactCountClass.ContactCountFunction(Trigger.new);        
    }
    
    
    if(trigger.isafter ==true && trigger.isdelete ==true)
    {
         ContactCountClass.ContactCountpostdelete(trigger.old);     
        //system.debug(Trigger.oldMap.get(Id).Name); 
        
    }
    
    if(trigger.isbefore == true && trigger.isdelete == true)
    { 
        system.debug('Contact is created ' + Trigger.old );
        system.debug('Contact is created2' + Trigger.oldMap.Keyset());
        ContactCountClass.ContactCountBeforedelete(trigger.old);
    }
    
    
    
}