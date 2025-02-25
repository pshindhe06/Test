trigger GF7 on Position__c (before insert, before update)
{
list<string>a=new list<string>();
for(Position__c p:trigger.new)
{
 a.add(p.Name);
}
list<Position__c>pos=[select Id, Name from Position__c where Name in:a];
for(Position__c b:trigger.new)
{ 
    if(trigger.isInsert)
    {
 if(pos.size()!=0)
 {
 b.addError('Duplicate Name');
 }
    }

if(trigger.isUpdate)
{
for(Position__c c:trigger.old)
{
if(b.Name!=c.Name && pos.size()!=0)
{   
c.addError('Duplicate Name');
}
}
}
}
}