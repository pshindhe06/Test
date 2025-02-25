public class DMLExample {
    public void UpdateAccount(){
        list<Account>acc=[select Id, Name,Type, CreatedDate,Active__c from Account where CreatedDate<LAST_N_DAYS:1];
        system.debug('The Updated Records are '+acc);
        for(Account a:acc){
            a.Type='Customer';
            a.Active__c='Yes';
            update acc;  } }
    
    public void UpdateOpp(){
        list<opportunity>opp=[select Id, Name, StageName from Opportunity];
        for(opportunity p:opp){
            p.stagename='closed won';
            p.CloseDate=system.today();
            p.Type='New Customer';
            p.LeadSource='web';
            update opp;
            system.debug('The updated Opp records are '+opp);
        }}
    public void DeleteAccount(){
        list<Account>accounts=[select id from Account where createddate=LAST_WEEK];
        system.debug('Records to delete '+accounts);
        system.debug('Total records to delete '+accounts.size());
        delete accounts;
        system.debug('The deleted records are '+accounts);
        system.debug('Total records to deleted '+accounts.size());
    }
    
    public void InsertAccount(){
        list<Account>act=new list<Account>();
        Account a1=new Account();
        a1.Name='DML Example1';
        a1.Rating='cold';
        a1.Phone='12345678';
        act.add(a1);
        
        Account a2=new Account();
        a2.Name='DML Example2';
        a2.Rating='cold';
        a2.Phone='12345678';
        act.add(a2);
        
        insert act;
        system.debug('The Inserted Account records are '+act);
    }
    public void UpsertRecords(){
     list<Contact>con=[select id,Name from Contact where Name='DML Example'];
        Contact c=new Contact();
        c.FirstName='DML';
        c.LastName='Example';
        con.add(c);
        upsert con;
        system.debug('The Contact records are '+con);
    }
    
    public void UndeleteRecords(){
        list<Contact>c1=[select id from Contact where isDeleted=true ALL ROWS];
        undelete c1;
        system.debug('The undeleted Contact records are '+c1);
    }
}