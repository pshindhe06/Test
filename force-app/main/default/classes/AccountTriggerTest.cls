@isTest
public class AccountTriggerTest 
{
@isTest Static void TestCreate()
{
 list<Account>acc=new list<Account>();
 for(integer i=0;i<200;i++)
 {
 Account a=new Account(name='Test101'+i, Type='Prospect', Active__c='Yes'+i, BillingState='CA');
  acc.add(a);
  insert acc;
   for(Account s:acc)
   {
    system.assertEquals('CA', a.ShippingState, 'BillingState should be sama as ShippingState');	
   }
 }
}
}