public class ProductTotalAcessPrice {

    public static void fnupdatepriceonproduct(List<accessories__C> trigAcs)
    {
	    //fetch product related to accessory which is modified
        List<string> product_name = new List<string>();
        for (accessories__C a: trigAcs)
        {
            product_name.add(a.product__C);
        }
        system.debug('product_name ' + product_name);
        
		//sum up the cost of all accessories under the given product
        List<Accessories__C> acs = new List<Accessories__C>();
        acs = [select cost__C  from accessories__C where product__r.id IN : product_name];
        system.debug('acs ' + acs);
        decimal acs_Cost = 0.0;        
        for (Accessories__c c : acs)
        {    
        acs_cost =  c.cost__C + acs_cost;
        }
        system.debug('acs_cost ' + acs_cost);
        //system.debug(acs_cost);
      //  Product__C P1 = new product__C();
	  
	   //update the total cost on product
        List<Product__C> oldprod = new List<Product__C>();
        oldprod = [select id,name,Total_Price_Accessories__c  from product__C where id IN : product_name];
        system.debug('oldprod ' + oldprod);
        List<Product__C> newproduct = new List<product__C>();
        
        for (Product__c Pinsert: oldprod) 
        { 
           // Product__C selectproduct = new Product__C();
          //  selectproduct = Pinsert;
            Pinsert.Total_Price_Accessories__c = acs_cost;
            newproduct.add(Pinsert);
                       
        }
        
        if(newproduct.isempty() == false)
        {
           update newproduct;  
        }
                    
        
    }    
    
}