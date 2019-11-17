trigger updateProductPrice on Accessories__c (After Update, After Insert, After delete, After Undelete) {
ProductTotalAcessPrice.fnupdatepriceonproduct(trigger.new);
}