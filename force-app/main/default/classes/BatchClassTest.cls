global class BatchClassTest implements Database.Batchable<sObject> 
{
global database.QueryLocator start(Database.BatchableContext bc)
{
string query='select Street__c from Candidate__c';
return database.getQueryLocator(query);
}
 global void execute(Database.BatchableContext bc, list<Candidate__c>scope)
 {
  list<Candidate__c>con=new list<Candidate__c>();
  for(Candidate__c c:scope)
  {
    c.street__c='Navalur Dharwad';
    con.add(c);
  
      update con;}
 }
 global void finish(Database.BatchableContext bc)
 {
     
 }
}