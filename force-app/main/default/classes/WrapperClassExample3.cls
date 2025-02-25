public class WrapperClassExample3 {
    public class OpportunityInfo{
        public string name;
        public Date closeDate;
        public string StageName;
        public Decimal Amount;
    }
    public void InsertOppRecords(){
     list<OpportunityInfo>opplist=new list<OpportunityInfo>();
      OpportunityInfo opp=new OpportunityInfo();
      opp.Name='Wrapper Test Opp-1';
      opp.closedate=system.today();
        opp.stagename='Prospecting';
        opp.Amount=50000;
        opplist.add(opp);
        
        OpportunityInfo opp1=new OpportunityInfo();
      opp1.Name='Wrapper Test Opp-2';
      opp1.closedate=system.today()+15;
        opp1.stagename='Prospecting';
        opp1.Amount=45000;
        opplist.add(opp1);
        
        OpportunityInfo opp2=new OpportunityInfo();
      opp2.Name='Wrapper Test Opp-3';
      opp2.closedate=system.today()+25;
        opp2.stagename='Prospecting';
        opp2.Amount=5000;
        opplist.add(opp2);
        
        OpportunityInfo opp3=new OpportunityInfo();
      opp3.Name='Wrapper Test Opp-4';
      opp3.closedate=system.today()+30;
        opp3.stagename='Prospecting';
        opp3.Amount=5000;
        opplist.add(opp3);
        
       List<Opportunity> OppRecords=new list<Opportunity>();
        for(OpportunityInfo a:opplist)
        {
          Opportunity b=new Opportunity();
          b.name=a.name;
           b.CloseDate=a.closedate;
            b.StageName=a.stagename;
            b.Amount=a.amount;
            OppRecords.add(b);
        }
        insert OppRecords;
    }
}