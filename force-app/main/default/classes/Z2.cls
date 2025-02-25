public class Z2
{
public Account acc(string accountNumber)
{
    Account a=new Account();
    a=[select id,name from Account where name='Upsert Operation'];
    a.AccountNumber=accountNumber;
    update a;
    return a;
}
}