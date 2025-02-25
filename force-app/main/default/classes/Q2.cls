public class Q2 
{
public static void InsertRecords()
{
    list<Account>acc=new list<Account>();
    Account a=new Account();
    a.Name='Test Class Purpose Created';
    a.Active__c='Yes';
    a.Type='Prospect';
    acc.add(a);
    insert acc;
    system.debug('The newly inserted Account records are: '+acc);
}
}