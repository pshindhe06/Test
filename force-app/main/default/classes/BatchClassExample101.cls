public class BatchClassExample101 implements Database.Batchable<sObject>
{
public Database.QueryLocator start(Database.BatchableContext bc)
{
 string query='select id, name, AccountNumber from Account where name=DMLUpsertExample';
 return Database.getQueryLocator(query);
}
public void execute(Database.BatchableContext bc, list<Account>scope)
{
 for(Account a:scope)
 {
  a.AccountNumber='0987654321';
 }
  update scope;
 system.debug(scope);
}
public void finish(Database.BatchableContext bc)
{
 
}
}