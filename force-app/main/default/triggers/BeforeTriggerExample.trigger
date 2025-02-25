trigger BeforeTriggerExample on Lead (before insert,before update)
{
For(Lead L:Trigger.new)
{
If(Trigger.isInsert)
{
L.Phone='1234567890';
L.LeadSource='web';
}
If(Trigger.isUpdate)
{
L.Phone='1234567890';
L.LeadSource='web';
}
}
}