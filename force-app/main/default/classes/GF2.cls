public class GF2
{
public static void disp()
{
 Account a=[select id, name from Account limit 10];
  a.AccountNumber='1234567890';
  insert a;
 system.debug(a);
}
}