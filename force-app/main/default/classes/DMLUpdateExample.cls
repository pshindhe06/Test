public class DMLUpdateExample 
{
public static void disp()
{
    list<Account>acc=new list<Account>();
Account a=[select id, name,Industry from Account where Name='DMLInserExample101'];
a.Industry='Finance';
acc.add(a);
 try
 {
Update acc;
system.debug('The Updated record is '+acc);
 }
 catch(DMLException e)
 {
     
 }
}
}