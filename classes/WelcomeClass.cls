public with sharing class WelcomeClass {

    public string firstname{set;get;}
     public string message{set;get;}
    public string lastname{set;get;}
    public string message1{set;get;}
    public void showmessage()        
    {
        
       message = 'Welcome ' + firstname ;
           
    }
    
    public void showmessage1()
    {
        
       message1 = 'Welcome! ' + firstname + ' ' + lastname + ' have a great day ahead.';
    }
    public void resetmessage()
    {
        message = '';
        message1 ='';
    }
            
            
    
    
}