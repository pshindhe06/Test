trigger AfterTriggerExampleInsertUpdate on Lead (after insert, before update) 
{
for(Lead L:Trigger.new)
{
 if(Trigger.isInsert)
 {
 Contact c=new Contact();
c.FirstName='AfterTrigger';
c.LastName='Example101';
insert c;
 }
  if(Trigger.isUpdate)
  {
      Contact c=new Contact();
c.FirstName='AfterTrigger';
c.LastName='Example101';
insert c;
  }
}
}