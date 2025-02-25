public class G1 
{
public static Position__c acc()
{
list<Position__c> pos=new list<Position__c>(); 
Position__c p= new Position__c();
p.Name='G1 Class Record';
p.Status__c='New Position';
insert p;
system.debug('The New Records is '+p);
return p;
}
}