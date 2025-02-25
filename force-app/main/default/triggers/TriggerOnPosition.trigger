trigger TriggerOnPosition on Position__c (after insert) 
{
    list<Candidate__c>pos=new list<Candidate__c>();
for(Position__c p:trigger.new)
{
  Candidate__c c=new Candidate__c();
    c.First__c='Created thorugh';
    c.Last_Name__c='Trigger';
    pos.add(c);
    insert c;
    system.debug('The New Candidate Record is'+c);
    
}
}