public class ConstructorExample {
    public ConstructorExample(){
    Contact con=new Contact();
    con.FirstName='Constructor';
    con.LastName='Example';
    insert con;
    system.debug('The Contact Record is '+con);
    }
    public ConstructorExample(string firstname, string lastname){
     Contact con1=new Contact();
      con1.FirstName=firstname;
      con1.LastName=lastname;
      insert con1;
      system.debug('The Contact Record is '+con1);
    }
}