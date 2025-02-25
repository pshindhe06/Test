public class TestAccount
{
public static void disp()
{
  Account a=new Account();
    a=[select id,name,ownerId,Owner.name from Account where Name='Aethna Home Products'];
    system.debug('The Account Details is '+a);
}
}