public class CallApexClass
{
@invocablemethod
    public static void disp()
    {
       Account a=new Account();
        a.Name='Test501';
        a.AccountNumber='0123456789';
        a.BillingCity='Bangalore';
        a.BillingCountry='India';
        insert a;
        system.debug('The inserted Account is'+a);
    }
}