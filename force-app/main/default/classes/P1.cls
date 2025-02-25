public class P1 
{
public static void T()
{
    Account a=new Account();
   a=[select name from Account where name='Upsert Operation'];
   a.AccountNumber='0987654321';
    update a;
}
}