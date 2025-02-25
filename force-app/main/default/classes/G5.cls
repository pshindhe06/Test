public class G5 {
public static Position__c pos()
{
    Position__c p=[select id, name from Position__c where name='New Name is G4'];
    delete p;
    system.debug('The Deleted Record is '+p);
    return p;
}
}