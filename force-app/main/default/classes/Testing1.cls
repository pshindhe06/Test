public class Testing1
{
Public Static Position__c pos()
{
    
    Position__c a=[select id, Name, Status__c from Position__c where name='G1 Class Record'];
    
    system.debug('The Quired records are: '+a);
    return a;
    
}
}