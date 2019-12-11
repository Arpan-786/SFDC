trigger ApplyDiscount on Pen__c (Before Insert, Before Update) {
//apply discount
if(trigger.isbefore == true && trigger.isinsert == true)
{
PenDiscountV1.fnapplydiscount(Trigger.new);
}

if(trigger.isbefore == true && trigger.isupdate == true)
{PenDiscountV1.fnapplydiscountupdate(Trigger.new);
}

}