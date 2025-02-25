public class SingleEmailMessageExample 
{
public PageReference SendingEmail()
{
Messaging.SingleEmailMessage SEM= new Messaging.SingleEmailMessage();
    string[] sendingTo= new string[]{'pshindhe06@gmail.com'};
        SEM.setToAddresses(sendingTo);
        SEM.setSubject('Single Email Message Example');
        SEM.setPlainTextBody('This is an example of SEM');
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] {SEM});
    return null;
}
}