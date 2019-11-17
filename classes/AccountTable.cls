public with sharing class AccountTable {

    public String act1 { get; set; }
    
    public static list<account> act{set;get;}
    
    public  AccountTable()
    {
        //act = null;
        getaccountdata();
    }
  
         public Static void getaccountdata()
    {
        act = [select id, name, site  from account order by name limit 4];
        
    }
    
    public  PageReference updateaccount()        
    {   
        getaccountdata();
        update act;
        getaccountdata();
        return null;
    }
    
    

}