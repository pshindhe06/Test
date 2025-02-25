public class G4 
{
public static Position__c pos()
{
  Position__c p=[select id ,name from Position__c where name='G3 New Record'];
      
        p.Name='New Name is G4';
   
       update p;
        return p;
    
}
}