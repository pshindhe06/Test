trigger AfterTriggerExample1 on Account (after insert) {
    list<Account>acc=new list<Account>();
    list<case> cs=new list<case>();
    for(Account a:Trigger.new){
        if(a.Industry=='Banking' || a.Industry=='Education' || a.AnnualRevenue>50000){
            Case c=new case();
            c.OwnerId=a.OwnerId;
            c.Status='New';
            c.Origin='Email';
            c.Priority='Medium';
            c.AccountId=a.Id;
            c.Type='Feature Request';
            c.SLAViolation__c='No';
            c.Subject=a.Industry;
            c.Description=a.Name;
            cs.add(c);
        }
    }
    insert cs;
    system.debug('The Case record is '+cs);
}