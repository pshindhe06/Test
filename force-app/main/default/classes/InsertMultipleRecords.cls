public class InsertMultipleRecords 
{
public void disp()
{
list<Position__c> pos=new list<Position__c>();
Position__c p;
p=new Position__c(name='P101', Status__c='New Position', Type__c='Full Time', Functional_Area__c='IT');
 pos.add(p);
 p=new Position__c(name='P102', Status__c='New Position', Type__c='Full Time', Functional_Area__c='IT');
 pos.add(p);
 insert pos;
 system.debug(pos);
}
}