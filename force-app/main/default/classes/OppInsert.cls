public class OppInsert {
    public void InsertOpp1(){
     opportunity opp1=new opportunity();
      opp1.Name='Test Opp1';
      opp1.StageName='Closed Won';
      opp1.CloseDate=system.today();
      opp1.Amount=50000;   
      insert opp1;
      system.debug('The Opp Record is '+opp1);
    }
      public void InsertOpp2(){
      opportunity opp2=new opportunity();
      opp2.Name='Test Opp2';
      opp2.StageName='Prospecting';
      opp2.CloseDate=system.today().addDays(5);
      opp2.Amount=65000;
      insert opp2;
      system.debug('The Opp Record is '+opp2);
      }
    public void InsertOpp3(){
      opportunity opp3=new opportunity();
      opp3.Name='Test Opp3';
      opp3.StageName='Closed Lost';
      opp3.CloseDate=system.today();
      opp3.Amount=45000;
      insert opp3;
      system.debug('The Opp Record is '+opp3);
      }
}