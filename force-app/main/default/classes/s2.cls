public class s2
{
public static void disp()
{
 list<Position__c>p= new list<Position__c>();
  list<Position__c> p1=[select id, name from Position__c];
  p.addAll(p1);
  system.debug('The Position Records are '+p);   
}
}