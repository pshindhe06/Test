trigger beforeUpdate12 on Opportunity (before update) {
    map<id, Opportunity>oppmap=Trigger.oldmap;
    map<id, Opportunity>newmap=Trigger.newmap;
    set<id>keys=oppmap.keyset();
    for(id k:keys){
        opportunity p=oppmap.get(k);
        opportunity p1=newmap.get(k);
        system.debug('The Old Stage Name= '+p);
        system.debug('The New Stage Name= '+p1);
        if(p.StageName!='Closed Won' && p1.StageName=='Closed Won'){
            p1.CloseDate=system.today();
            p1.Type='New Customer';
        }
    }
}