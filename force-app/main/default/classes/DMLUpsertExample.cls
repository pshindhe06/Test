public class DMLUpsertExample
{
public static void disp()
{
list<Account> acc=[select id, name,AccountNumber from Account where name='DMLInserExample101 '];
for(Account a:acc)
{
a.AccountNumber='1234567890';
a.Active__c='No';
}
Account a1=new Account(Name='DMLUpsertExample', Type='other', Active__c='Yes');
acc.add(a1);
try
{
 upsert acc;
 system.debug('The Upserted Records '+acc);
}
 catch(DMLException e)
 {
     
 }
}
}