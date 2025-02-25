public class SingleEmailExample 
{
public PageReference SendingEmail()
{
Messaging.SingleEmailMessage SE=new Messaging.SingleEmailMessage();
string[] ToAddress=new string[]{'pshindhe06@gmail.com'};
 SE.setToAddresses(ToAddress);
string [] BcAddress=new string[]{'pshindhe06@gmail.com'};
SE.setBccAddresses(BcAddress);
SE.setSubject('This is Single Email Message Example');
SE.setPlainTextBody('Hi, This is Single Email Message Testing....');
Messaging.sendEmail(new Messaging.SingleEmailMessage[] {SE});
 return null;
}
}