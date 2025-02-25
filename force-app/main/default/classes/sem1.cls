public class sem1 
{
public PageReference disp()
{
Messaging.SingleEmailMessage se= new Messaging.SingleEmailMessage();
    string[] sendingTo=new string[]{'pshindhe06@gmail.com'};
    se.setToAddresses(sendingTo);
    se.setSubject('This is 2nd Emample of Single Email Message');
    se.setPlainTextBody('Hi, This is second Email of SEM ');
    Messaging.sendEmail(new Messaging.SingleEmailMessage[]{se});
    return null;
}
}