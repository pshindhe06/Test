trigger TriggerExecutingExample on Opportunity (before insert, before update) 
{
TriggerExecutingExample d=new TriggerExecutingExample();
d.Updateopp(Trigger.New);
}