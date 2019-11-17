public class CreateContact1 {

    @AuraEnabled
    public static void createcon(string accountid, List<Contact> con)
    {
        for(contact c: con )
            c.accountid = accountid;
        insert con;
    }
}