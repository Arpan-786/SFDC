public class updateRecordCon {

  public List<account> act {get;set;}

    public updateRecordCon ()
    {
      init1();
    }
   public void init1() {
   
      act = [select Id, Name, site from account ORDER BY Name LIMIT 4];   

   }    
    
    public PageReference updateRecord(){      
        try{ 
            update act;
            
        }
        catch(DmlException ex){
            ApexPages.addMessages(ex);
        }
        init1();
        return null;
    }
}