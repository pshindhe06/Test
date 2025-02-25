trigger AfterTriggerExample on Lead (after update) 
{
For(Lead L:Trigger.new)
{
Contact c=new Contact();
c.FirstName='AfterTrigger';
c.LastName='Example101';
insert c;
system.debug(c);
}
}