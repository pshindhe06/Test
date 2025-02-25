public class NonAtomicExample1 {
    public void records(){
     list<Contact>con=[select id, name, LeadSource from Contact where Name='1 1'];
        for(Contact c:con){
      c.LeadSource='web';
        con.add(c);
      system.debug('The updated record is '+con);
    
     database.SaveResult[] res=database.update(con, false);
        for(database.SaveResult r:res){
            if(r.isSuccess()){
                system.debug('The updated record is '+r.getId());
            }
            else{
                database.Error[] er=r.getErrors();
                for(database.Error err:er){
                    system.debug('The error records are '+err.getMessage());
                    system.debug('The error fields are '+err.getfields());
                }
            }
        }}
    }
}