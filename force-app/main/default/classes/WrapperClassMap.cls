public class WrapperClassMap {
    public class ContactInfo{
        public string Firstname;
        public string Lastname;
    }
    public void ContactRecords(){
        map<string,string>MapRecords=new map<string,string>();
        list<ContactInfo>con=new list<ContactInfo>();
        ContactInfo c=new ContactInfo();
        c.FirstName='WrapperClassMap';
        c.LastName='Example';
        con.add(c);
        
        ContactInfo c1=new ContactInfo();
        c1.FirstName='WrapperClassMap';
        c1.LastName='Example1';
        con.add(c1);
        
        
        for(ContactInfo a:con){
            mapRecords.put(a.LastName,a.FirstName);
            
        }
        
        set<string>z=MapRecords.keyset();
        list<string>q=MapRecords.values();
        system.debug('The Last Names are '+z);
        system.debug('The First Names are '+q);
        system.debug('The map records '+MapRecords);
        system.debug('The Map size is '+MapRecords.size());
        system.debug('The Map Keys are '+MapRecords.keyset());
        system.debug('The Map Values are '+MapRecords.values());
        string v=MapRecords.get('Example');
        system.debug('The Map first Values are '+v);
        string p=MapRecords.get('Example1');
        system.debug('The Map second Values is '+p);
        Boolean g=MapRecords.containskey('Example');
        system.debug('The Map conatins value is '+g);
        system.assertEquals(True, g);
    }
    
}