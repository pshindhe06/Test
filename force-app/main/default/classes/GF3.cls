public class GF3 
{
public static void UpdatePosition()
{
list<Position__c>pos=new list<Position__c>();
Position__c p=new Position__c();
if(p.Status__c=='New Position')
{
 p.Max_Pay__c=9999;

 pos.add(p);
 update pos;
 system.debug(pos);
}
}
}