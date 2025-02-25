global class BatchClassExample implements database.Batchable<sobject>
{
global database.QueryLocator start(database.BatchableContext BC)
{
  string query='select id, name from Account';
   return database.getQueryLocator(query);
}
    global void execute(database.BatchableContext BC, list<Account>scope)
    {     for(Account p:scope)
    {
      p.name=p.name+'BCE';
    } update scope;
     system.debug(scope);
    }
    global void finish(database.BatchableContext BC)
    {
        
    }
}