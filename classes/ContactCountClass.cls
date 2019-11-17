public class ContactCountClass {   
    
    public static void ContactCountFunction(List<Contact> c)
    {
        //Get the Contact's account
        integer count;   
        integer CountA = 0;
       //set<id> Accountid; This give error as 'Null pointer exception: Attempt to de-reference a null' when we dont initialize and directly do assignment.
        set<id> Accountid = new set<id>();             
        for(contact a:c)
        {
          Accountid.add(a.AccountId);            
        }
        system.debug('set values are ' + Accountid);
         
        //Find number of contacts associated to this account
        count = [select count() from contact where account.id in : Accountid];   
        countA = [Select count() from contact where account.id in : Accountid and name like 'A%'];
        system.debug('count is  ' + count + 'countA is ' + countA);
        
        
                       
        //update the count at the account level
        List<account> newaccount = new List<account>();         
        for(account a :[Select id, Count_of_Contacts__c from account where id in : Accountid])
        {
             a.Count_of_Contacts__c = count;
             a.Count_of_Contact_Starting_with_A__c = countA;
              newaccount.add(a) ;
        }
        if(newaccount.size() > 0) //to Avoid list has not rows error
        {
            update newaccount;     
        } 
        system.debug('Account updated successfully');
       
    }   
    
   public static void  ContactCountpostdelete(List<Contact> c)
    {
        
        //Get the Contact's account
       set<Id> accountid = new set<Id>();
        for (contact b: c)
        {
            accountid.add(b.AccountId);
        }
        system.debug('Set values are ' + accountid);
        
        //update the count at account header level
        List<Account> oldaccount = new List<Account>();
        for(Account a: [Select id, Count_of_Contacts__c from account where id in : accountid])
        {
           // if (a.Count_of_Contacts__c >0)
            {
                a.Count_of_Contacts__c = a.Count_of_Contacts__c - 1; 
            }
            oldaccount.add(a);
        }
        if(oldaccount.size()>0)
        {
            update oldaccount;
        }        
        
    }        

    
    public static void ContactCountBeforedelete(List<contact> c)
    {
        integer count;
        set<id> accountid = new set<id>();
        for(contact a:c)
        {
            accountid.add(a.accountid);
        }
        
        system.debug('set values are 1 ' + accountid);
        
        count = [Select count() from contact where account.id in : accountid];
        system.debug('count of contacts under account ' + count);
       
        for(contact a:c)
        {
          if (count==1)
         {
           a.addError('Error in delete the contact. Ensure Account had atleast 1 contact under it');
         }
                     
        }
        
    }
    
}