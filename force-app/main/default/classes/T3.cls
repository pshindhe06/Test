public class T3 
{
public static void disp()
{
list<Account>acc=new list<Account>();
    Account a1=new Account();
    a1=[select id,AccountNumber,Zone__c,Region__c from Account where name='Created Through Apex Class'];
    system.debug('The existing Account records are '+a1);
    a1.Region__c='APAC';
    a1.Zone__c='East Asia';
    acc.add(a1);
    Account b1=new Account();
    b1.Name='Upsert Operation';
    b1.Type='Prospect';
    b1.Active__c='Yes';
    acc.add(b1);
    upsert acc;
    system.debug('The Updated and Created records are '+acc);
}
}