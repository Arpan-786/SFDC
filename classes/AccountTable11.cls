public  class AccountTable11 {
    
      public List<account> act1 {get;set;}
    
    public  AccountTable11()    {
        
        getaccountdata1();
    }
  
         public  void getaccountdata1()
    {
        act1 = [select id, name, site  from account order by name limit 4];
        
    }
    
    public  PageReference updateaccount()        
    {   
        try{
            update act1;
        }
        catch(DmlException ex)
        {
            ApexPages.addMessages(ex);
        }
       // getaccountdata1();
        return null;
    }
    
    

}