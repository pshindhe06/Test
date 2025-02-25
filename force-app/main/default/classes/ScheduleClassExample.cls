public class ScheduleClassExample implements schedulable
{
public void execute(schedulablecontext sc)
{
  List<Account> acc=new List<Account>();
  Account a=new Account();
  a.Name='ScheduleClassExample SSEM';
  a.Type='other';
  a.Active__c='yes';
  acc.add(a);
  insert acc;
  system.debug('The ScheduleClassExample record is '+acc);
}
}