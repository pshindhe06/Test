public class ContactRecords {
    public void InsertContactRecords(string FirstName, string LastName){
    Contact con=new Contact();
     con.FirstName=FirstName;
     con.LastName=LastName;
      insert con;
      system.debug('The Contact Records are '+con);
      system.debug('The Contact Id is '+con.Id);
      system.debug('The Contact First Name is '+con.FirstName);
      system.debug('The Contact Last Name is '+con.LastName);
      system.assertEquals('Test', con.FirstName);
    }
}