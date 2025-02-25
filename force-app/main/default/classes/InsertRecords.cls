public class InsertRecords 
{
    public Account a{get;set;}
public void disp()
{
    Account acc=new Account();
    acc.Name=a.Name;
    acc.Active__c=a.Active__c;
    acc.Type=a.Type;
    insert acc;
}
}