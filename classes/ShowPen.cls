public class ShowPen {
    public List<pen__C> Pen {get;set;}
    public account account;
    
    public showPen()
    {
        Pen = [select id, name,Customer_Name__c, Pen_Cost__c, Comments__c from pen__C];
        
    }
    
    public pagereference updatepen()
    {
        update Pen;
        //redirection to VPFAccountPage
        account = [select id from account where name = 'Cognizant' limit 1];
        Pagereference pgr = new Pagereference('/apex/VFPAccount?id' + account.id );
        return pgr;
    }
    
       

}