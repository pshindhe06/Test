trigger beforeUpdate on Opportunity (before update) {
    list<opportunity>opp=[select id, Name, StageName from Opportunity];
    for(Opportunity p:Trigger.old){
        if(p.stagename=='Closed Won'){
            p.closedate=system.today();
            p.type='new customer';
            opp.add(p);
        }
    }
    update opp;
}