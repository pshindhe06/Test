public class ExportData 
{
public pagereference SE()
{
list<Position__c>pos=new list<Position__c>();
 list<Position__c> p=[select id,name, status__c from Position__c];
 if(p.size()==0)
 {
  pos.addAll(p);
 }
    string generatedCSVfile='';
    list<string>queryfields= new list<string>{'id, name, status__c'};
      string filerow='';
    for(Position__c a:pos)
    {
     filerow='';
        filerow=filerow+','+a.id;
        filerow=filerow+','+a.name;
        filerow=filerow+','+a.status__c;
        generatedCSVfile=generatedCSVfile+filerow+'\n';
    }
    
    messaging.EmailFileAttachment ct= new messaging.EmailFileAttachment();
    blob csvblob=blob.valueOf(generatedCSVfile);
    string csvname='Position Records.csv';
    ct.setFileName(csvname);
    ct.setBody(csvblob);
    messaging.SingleEmailMessage email= new messaging.SingleEmailMessage();
    string[] toAddress=new string []{'pshindhe06@gmail.com'};
    string subject='Position Records';
    email.setToAddresses(toAddress);
    email.setSubject(subject);
    email.setPlainTextBody('Position Records');
    email.setFileAttachments(new Messaging.EmailFileAttachment[]{ct});
    messaging.SendEmail(new messaging.SingleEmailMessage[]{email});
    return null;
}
}