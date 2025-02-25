public class soqlexample {
    public void soqlRecords(){
        list<Account>acc=[select Id, name from Account limit 2];
        system.debug('The Account records are '+acc);
        for(Account a:acc){
            system.debug('Account Id='+a.Id);
            system.debug('Account Name='+a.Name);
        }
        set<Contact>con=new set<Contact>([select id, name from Contact limit 2]);
        system.debug('The Contact records are '+con);
        for(Contact c:con){
            system.debug('Contact Id='+c.Id);
            system.debug('Contact Name='+c.Name);
        }
        map<Id,Opportunity>opp=new map<Id, Opportunity>([select id, name from Opportunity limit 2]);
        system.debug('The Map records are '+opp);
        system.debug('The Opportunity Id='+opp.keyset());
        system.debug('The Opportunity Name='+opp.values());
        for(Id Idkey:opp.keyset()){
            Opportunity p=opp.get(Idkey);
            system.debug('The Opportunity Id='+p);
        }
        list<Account> a1=[select Id, Name, phone, rating from Account order by Name desc];
        system.debug(a1);
        list<contact>c1=[select Id, FirstName, LastName, phone from Contact order by lastname asc];
        system.debug(c1);
        set<lead>L1=new set<lead>([select Id, name, Email from Lead where createddate=LAST_N_DAYS:30]);
        system.debug(L1);
        map<string,opportunity>opp1=new map<string,opportunity>([select Id, Name, stagename from Opportunity where stagename='Prospecting' ALL ROWS]);
        system.debug(opp1);
        list<Product2>pro=[select id, name, isActive,Productcode from Product2 offset 10];
        system.debug(pro);
        list<Case>c=[select Id, CaseNumber, status from Case where status like '%N'];
        system.debug(c);
        list<Case>c11=[select Id, CaseNumber, status from Case where status like 'N%'];
        system.debug(c11);
        list<Case>c2=[select Id, CaseNumber, status from Case where status like '%N%'];
        system.debug(c2);
        list<Case>c3=[select Id, CaseNumber, status from Case where status like '__N%'];
        system.debug(c3);
    } 
}