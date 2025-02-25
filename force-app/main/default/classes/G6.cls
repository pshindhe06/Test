public class G6
{
public static Position__c pos()
{
   Position__c p=new Position__c();
    p.Name='G6 Record';
    insert p;
    system.debug('The New Record is: '+p);
    Candidate__c c=new Candidate__c();
    c.First__c='G6';
    c.Last_Name__c='New Record';
    insert c;
    system.debug('The Candidate Record is:'+c);
    return p;
}
}