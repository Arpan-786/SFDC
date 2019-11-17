public with sharing class ContactListLC {

    @AuraEnabled
    public static List<Contact> getcontact(string acntid)
        
    {
        
        return [select id, firstname, lastname, email, phone from contact where email <> null and accountid =: acntid];
        
    }
    
    @AuraEnabled
    public static Contact createcontact(Contact con, Id AccountId)
    {
       // alert('2');
        con.AccountId = AccountId;
        Insert con;
        return con;
        
    }
    
    
}