trigger AccountTest on Account (after insert)
{

 if(Trigger.IsInsert)
 {
  list<Contact> con= new list<Contact>();
   for(Account acc:Trigger.new)
   {
     Contact c=new Contact();
     c.LastName='Testing1';
     c.FirstName='Trigger';
      c.AccountId=acc.id;
     con.add(c);
     insert con;
       system.debug('The new Contact is'+con);
   }  


 }
}
