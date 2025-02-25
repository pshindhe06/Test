trigger AddErrorExample on Candidate__c (before insert, before update) 
{
for(Candidate__c c:Trigger.new)
{
 
  if(c.Mobile_No__c==null)
  {
   c.addError('Please enter the Mobile Number');
  }
 
}
}