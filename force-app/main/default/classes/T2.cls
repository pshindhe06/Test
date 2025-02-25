public class T2 
{
public static void Testing()
{
    Account a=new Account();
    a.Name='Created Through Apex Class';
    a.Active__c='Yes';
    a.Industry='Agriculture';
    a.Type='Customer - Direct';
    insert a;
    system.debug('The Inserted Account records are '+a);
}
}