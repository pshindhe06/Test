public class EmailExample {
public PageReference sendemail()
{
    Document d=[select id, name from Document where name='Document101'];
 Messaging.SingleEmailMessage a=new Messaging.SingleEmailMessage();
    string[] ToAddress=new string[]{'pshindhe06@gmail.com'};
     a.SetToAddresses(ToAddress);
    a.SetSubject('This is example of Single Email Message');
    a.SetPlainTextBody('Hi, This Testing....!');   
    a.setEntityAttachments(new ID[]{d.Id});
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] {a});
 return null;
}

}