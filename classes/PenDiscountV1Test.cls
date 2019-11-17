@istest
public class PenDiscountV1Test {

 /*   Static testmethod void  testapplydiscount1()
    {
        //create pen record
        Pen__C P = new Pen__C();
        P.name = 'Rotomac5';
        P.Customer_Name__c ='Arpan5';
        P.Pen_Cost__c = 131;
            
        //insert pen record
        insert P;
        
        //Retrive the recrods from database
        Pen__C P1 = new Pen__C();
        P1 = [Select Pen_Cost__C from Pen__C where id =: P.id];
        
        System.assertEquals(111, P1.Pen_Cost__C);
        
        
    }    
        Static testmethod void  testapplydiscount2()
    {
        //create pen record
        Pen__C P = new Pen__C();
        P.name = 'Rotomac5';
        P.Customer_Name__c ='Arpan5';
        P.Pen_Cost__c = 80;
            
        //insert pen record
        insert P;
        
        //Retrive the recrods from database
        Pen__C P1 = new Pen__C();
        P1 = [Select Pen_Cost__C from Pen__C where id =: P.id];
        
        System.assertEquals(70, P1.Pen_Cost__C);
        
        
    }       
        Static testmethod void  testapplydiscount3()
    {
        //create pen record
        Pen__C P = new Pen__C();
        P.name = 'Rotomac5';
        P.Customer_Name__c ='Arpan5';
        P.Pen_Cost__c = 40;
            
        //insert pen record
        insert P;
        
        //Retrive the recrods from database
        Pen__C P1 = new Pen__C();
        P1 = [Select Pen_Cost__C from Pen__C where id =: P.id];
        
        System.assertEquals(35, P1.Pen_Cost__C);
        
        
    }    
    Static testmethod void  testapplydiscount4()
    {
        //create pen record
        Pen__C P = new Pen__C();
        P.name = 'Rotomac5';
        P.Customer_Name__c ='Arpan5';
        P.Pen_Cost__c = 8;
            
        //insert pen record
        insert P;
        
        //Retrive the recrods from database
        Pen__C P1 = new Pen__C();
        P1 = [Select Pen_Cost__C from Pen__C where id =: P.id];
        
        System.assertEquals(3, P1.Pen_Cost__C);
        
        
    }*/
    
    static testmethod void testapplydiscountupdate()
    {
      //create record
      Pen__C P = new Pen__C();
      P.Name = 'Motac';
        P.Customer_name__C = 'HEB';
        P.Pen_cost__C = 121;
        
        //Insert record
        insert P;
        
        
        //update record
        P.Pen_cost__C = 101;
        
        update P ;
        
        //retrieve updated record and compare the output
        Pen__C P1 = new Pen__C();
        P1 = [select Pen_cost__C from Pen__C where id =: P.Id];
        system.assertEquals(81, P1.Pen_cost__c)   ;     
        
        
    }
    
    
}