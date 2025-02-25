public class TriggerExecutingExample 
{
public Boolean Updateopp(list<opportunity>opp)
{
 if(Trigger.isExecuting)
 {
 Opportunity op=[select id, name, IsPrivate from Opportunity where name='Edge SLA'];
  op.IsPrivate=True;
   opp.add(op);
  update opp;
  system.debug(opp);
 }
 else
 {
  system.debug(opp);
 }
 system.debug('return'+Trigger.isexecuting);
 return Trigger.isExecuting;
}
}