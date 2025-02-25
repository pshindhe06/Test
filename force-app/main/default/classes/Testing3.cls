public class Testing3
{
Public static Position__c pos()
{
 Position__c a=[select id, Name, Status__c from Position__c where Name='Trigger Test'];
 
     if(a.Status__c=='Open')
     {
         a.Min_Pay__c=50000;
         a.Max_Pay__c=70000;
         a.Open_Date__c=date.parse('3/25/2021');
         a.Close_Date__c=date.parse('3/28/2021');
         update a;
         
     
 }return a;
}
}