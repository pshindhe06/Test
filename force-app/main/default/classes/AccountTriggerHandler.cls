public class AccountTriggerHandler 
{
public Static void CreateAccounts()
{
  list<Account>acc=new list<Account>();
  for(Account a:acc)
  {
    if(a.shippingState!=a.BillingState)
    {
     a.shippingState=a.BillingState;
    }
  }
      
}
}