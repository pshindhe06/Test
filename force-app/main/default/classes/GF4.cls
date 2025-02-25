public class GF4 
{
public static void disp()
{
list<Position__c> p=[select Id from Position__c where Name='UpsertTesting'];
system.debug(p);
Position__c pos=new Position__c(Name='UpsertTesting');
upsert pos;
system.debug(pos);
}
}