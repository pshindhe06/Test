public class NonAtomicExample {
    public void disp(){
        list<Position__c>pos= new list<Position__c>();
        Position__c p=new position__c();
        p.Name='Non-Atomic Example';
        pos.add(p);
        system.debug('The Non-Atomic record is '+pos);
        
        database.SaveResult[] sr=database.insert(pos, true);
        for(database.SaveResult s:sr){
            if(s.isSuccess()){
                system.debug('The records Id is '+s.getId());      
            }
            else{
                database.Error[] err=s.getErrors();
                for(database.Error e:err){
                    system.debug('The error is '+e.getMessage());
                    system.debug('The error fields are '+e.getfields());
                }
            }
        }
    }
}