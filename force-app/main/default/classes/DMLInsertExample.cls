public class DMLInsertExample
{
public static void records()
{
list<Account> acc=new list<Account>();
Account a= new Account();
a.Name='DMLInserExample101';
a.Type='other';
a.Active__c='Yes';
acc.add(a);
insert acc;
system.debug('The new records are '+acc);
}
}