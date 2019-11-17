trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {
    List<BatchLeadConvertErrors__c> convertLeadList = new List<BatchLeadConvertErrors__c>();
    for(BatchApexErrorEvent convertEvent : Trigger.New){
        BatchLeadConvertErrors__c leadErrorObject = new BatchLeadConvertErrors__c();
        leadErrorObject .AsyncApexJobId__c = convertEvent .AsyncApexJobId;
        leadErrorObject .Records__c = convertEvent .JobScope;
        leadErrorObject .StackTrace__c = convertEvent .StackTrace;
        convertLeadList.add(leadErrorObject );        
    }
    if(convertLeadList.size() > 0){
        insert convertLeadList;
    }        

}