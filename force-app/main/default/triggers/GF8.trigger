trigger GF8 on Contact (before insert, before update) 
{
list<string> con=new list<string>();
for(Contact c:trigger.new)
{
 con.add(c.FirstName);
}
list<Contact> a=[select FirstName from Contact where Name in:con];
for(Contact b:trigger.New)
{
 if(trigger.isInsert)
 {
  if(a.size()!=0)
  {
  b.addError('Duplicate Contact Record');
  }
 }
 if(trigger.isUpdate)
 {
 for(Contact d:trigger.old)
 {
 if(b.FirstName!=d.FirstName && a.size()!=0)
 {
  d.addError('Duplicate Contact');
 }
 }
 }
}
}