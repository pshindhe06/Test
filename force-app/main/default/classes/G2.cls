public class G2 
{
Public static Position__c pos()
{
Position__c p=new Position__c();
p.Name='G2 Record';
p.Status__c='open';
p.Type__c='Full Time';
p.Functional_Area__c='IT';
p.Location__c='Bangalore';
p.Open_Date__c=date.parse('3/25/2021');
p.Close_Date__c=date.parse('3/28/2021');
p.Min_Pay__c=10000;
p.Max_Pay__c=20000;
    insert p;
    system.debug('The New Record is '+p);
    return p;
}
}