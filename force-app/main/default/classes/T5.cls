public class T5
{
public static void UndeleteRecords()
{
   Account a=[select id,name from Account where name='Upsert Operation' ALL ROWS];
    undelete a;
    system.debug('The Undeleted Account record is '+a);
}
}