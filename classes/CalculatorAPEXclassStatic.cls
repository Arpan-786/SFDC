public class CalculatorAPEXclassStatic {

     static string mailid;
    
    
    static public string getmailid(string firstname, string lastname)
    {
        mailid = firstname + '.' + lastname +'@gmail.com';
        return mailid;
        
    }
    
}