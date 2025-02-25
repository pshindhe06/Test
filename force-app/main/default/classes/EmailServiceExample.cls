global class EmailServiceExample implements Messaging.InboundEmailHandler
{
global Messaging.InboundEmailResult handleInboundEmail(Messaging.inboundEmail email,Messaging.InboundEnvelope envelop)
{
		Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
		String accname = email.fromName;
		String accdes = email.plainTextBody;
		String accIndus = email.Subject;
		Account ac = new Account(Name = accname, description = accdes, Industry = accIndus, Type='Other');
		insert ac;
		return null;
	}
}