public class testparse {

    public class contactinfo{        
    public string title;
    public string name;
    public integer age;
    public integer phone;           
    }
        
    public class acountinfo{
        public string accountname;
        public string accountlocation;
    }  
    
    public class accountcontactinfo{
           public acountinfo accounti;
           public List<contactinfo> contactlist;     
         
    }
    
    public class endrequest{
        public accountcontactinfo request;        
    }  
        
}