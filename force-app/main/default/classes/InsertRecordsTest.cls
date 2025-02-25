@isTest
public class InsertRecordsTest
{
@isTest static void display()
{
    InsertRecords account=new InsertRecords();
    Account a1=new Account();
    a1.Name='Test Class';
    a1.Active__c='Yes';
    a1.Type='Prospect';
    insert a1;
    account.disp();
}
}