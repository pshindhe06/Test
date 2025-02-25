trigger UpdateTrigger on Contract (before update) {
    list<Contract>cont=[select Id, Name, Status from Contract];
    list<Contract>co=new list<Contract>();
    for(Contract c:Trigger.old){
        if(c.status=='Activated'){
            c.Description='Update Trigger Example';
            co.add(c);
        }
    } update co;
}