trigger UpdateAccountNumber on Account (after update) 
{
list<Account>a1=new list<Account>();
for(Account acc:trigger.old)
{

if(acc.Type=='Prospect')
{

Account a=new Account();
a.AccountNumber='1234567890';
a1.add(a);

}
}
update a1;
}