public class T1 
{
public static void Test()
{
    list<Account>acc=new list<Account>();
    Account a=new Account();
    a=[select id,name,Type,AccountNumber,Active__c from Account where name='Aethna Home Products'];
    system.debug('The existing Account records are '+a);
    a.Type='Prospect';
    a.AccountNumber='1234567890';
    a.Active__c='Yes';
    acc.add(a);
    update acc;
    system.debug('The updated Account records are '+acc);
}
}