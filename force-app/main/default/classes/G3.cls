public class G3 {
public static Position__c position()
{
    list<Position__c> pos=new list<Position__c>();
    Position__c p=new Position__c();
    p.name='G3 New Record';
    p.Status__c='New Position';
    p.Open_Date__c=date.parse('3/24/2021');
    p.Close_Date__c=date.parse('4/1/2021');
    pos.add(p);
    insert pos;
    system.debug('The G3 Record is: '+pos);
    return p;
}
}