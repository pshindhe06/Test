public with sharing class P3 {
    @Auraenabled
    public static list<Opportunity> getoppty(){
        list<Opportunity> oppty=[select id, Name from Opportunity];
        return oppty;
    }

}