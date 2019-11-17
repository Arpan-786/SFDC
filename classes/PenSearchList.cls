public with sharing class PenSearchList {    
    
    @AuraEnabled
    public static list<sobject> searchpen(string input1)        
    {  
        string condition =        '%'+input1+'%' ;
        system.debug('condition is ' + condition);
        
        if(input1 != null)
        {
        string query = 'select id,name,Pen_Cost__c, Pen_Class__c, Customer_Name__c from pen__C where name like :condition';
        system.debug(query);
        List<sobject> oPen = database.query(query);       
        return oPen;
        }
        else
        {
        string query = 'select id,name,Pen_Cost__c, Pen_Class__c, Customer_Name__c from pen__C LIMIT 8';
            system.debug(query);
        List<sobject> oPen = database.query(query);       
        return oPen;
        }
        
        
        
    }  
    
}