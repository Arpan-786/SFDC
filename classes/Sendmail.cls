public class Sendmail {

    public String replytomail { get; set; }

    public String ccmail { get; set; }

    public String tomail { get; set; }

    public  void fnsendmail() {
        try
        {
        messaging.SingleEmailMessage mail = new messaging.SingleEmailMessage();
            string[] to = new string[] {tomail};
                string[] cc = new string[]{ccmail};
            
        if(tomail != '' && tomail != null)
       mail.setToAddresses(to);
            
        if(ccmail != '' && ccmail != null )    
        mail.setCcAddresses(cc);
        
            if(replytomail != '' && replytomail != null)
        mail.setReplyTo(replytomail);
            
        mail.setSubject('congrats!');
        mail.setHtmlBody('Hello Arpan, <br/> <br/>congrats yaar <br/><br/> Regards,<br/> Salesforce Team');
        
        messaging.sendEmail( new messaging.SingleEmailMessage[] {mail});
        }
        catch(exception e)
        {system.debug('error ' + e.getMessage());}
        
        
        
    }


}