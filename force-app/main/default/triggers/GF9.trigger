trigger GF9 on Lead (before insert, before update)
{
list<string> acc=new list<string>();
for(Lead l:trigger.new)
{
 if(trigger.isInsert)
 {
 acc.add(l.FirstName);
list<Lead>b=[select FirstName from Lead where FirstName in:acc];
for(Lead a:trigger.new)
{
 if(b.size()!=0)
 {
  a.addError('Duplicate Lead');
 }
if(trigger.isUpdate)
{
 for(Lead c:trigger.old)
 {
 if(a.FirstName!=c.FirstName&& b.size()!=0)
 {
 c.addError('Duplicate Lead record');
 }
 }
}
 }
}
}
}