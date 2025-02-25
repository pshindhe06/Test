trigger GF1 on Account (after insert)
{
for(Account a:trigger.new)
{
 Contact c=new Contact();
  c.FirstName='GF1Trigger';
  c.LastName='Created';
  insert c;
  system.debug('The new Contact is '+c);
}
}