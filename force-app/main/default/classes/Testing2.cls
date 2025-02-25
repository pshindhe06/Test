public class Testing2 
{
public static Position__c a()
{
    list<Position__c>pos=new list<Position__c>();
 Position__c p=[select id, name, Status__c from Position__c where name='Trigger Test'];
   if(p.Status__c!='Open' || p.Status__c==null)
   {
     p.Status__c='Open';
       pos.add(p);
       update pos;
       
   }
    return p;
       
    
}
}