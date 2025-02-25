public class Example1 {
    public void disp(date Closedate){     
        string StageName;
        list<Opportunity> opp=[select Id, Name, StageName from Opportunity where StageName='Prospecting'];
       opportunity p=new opportunity();
        if(Closedate==system.Today()){
            p.StageName='Closed Won';
            opp.add(p);
            update opp;
            system.debug('The StageName is '+StageName);
        }
        else if(Closedate>system.Today()){
            p.StageName='Closed Lost';
            opp.add(p);
            update opp;
            system.debug('The StageName is '+StageName);
        }
    }
}