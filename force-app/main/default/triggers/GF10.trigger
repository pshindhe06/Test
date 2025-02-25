trigger GF10 on Lead (before insert, before update)
{
for(Lead l:trigger.new)
{
 if(trigger.isInsert)
 {
 l.FirstName='Dr.'+l.Firstname;
}
}
 if(trigger.isUpdate)
 {
for(Lead z:trigger.Old)
     {
      z.FirstName='Dr.'+z.FirstName;
      update z;
     }
}
}