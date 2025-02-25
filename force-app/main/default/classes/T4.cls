public class T4 
{
public static void DeleteRecords()
{
    
    Account a=[select id,name from Account where name='Upsert Operation'];
    system.debug('The Account record is '+a);
    delete a;
}
}