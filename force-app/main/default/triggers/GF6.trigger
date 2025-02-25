trigger GF6 on Account (before insert) 
{
list<string> acc=new list<string>();
for(Account a:trigger.New)
{
acc.add(a.Name);
}
list<Account>b=[select id, Name from Account where Name in:acc];
for(Account ab:trigger.new)
{
if(b.size()!=0)
{
ab.addError('Duplicate record is found');
}
}
}