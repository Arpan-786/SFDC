public with sharing class PenList {

    @AuraEnabled
    public static list<sobject> searchpen(string input1)
        
    {  
        string condition =        '%'+ input1 +'%' ;
        string query = 'select id,name from pen__C where name like : condition';
        system.debug(query);
        List<sobject> oPen = database.query(query);       
        return open;
        
    }
    
    
}