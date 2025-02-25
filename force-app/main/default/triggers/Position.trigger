trigger Position on Position__c (after update)
{

for(Position__c p:Trigger.Old)
{
    if(p.Min_Pay__c==100)
    {
        p.Max_Pay__c=9999;
       
     update p;
    }
}
    }