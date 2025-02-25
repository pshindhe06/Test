public class Example2 {
    public void ContactRecords(){
     list<Contact>con=[select Id,FirstName,LastName,Phone from Contact limit 10];
        for(Contact c:con){
            system.debug('The Contact Records are '+c);
        system.debug('The Contact Records are '+c.Id);
         system.debug('The Contact Records are '+c.FirstName);
         system.debug('The Contact Records are '+c.LastName);
         system.debug('The Contact Records are '+c.phone);
         
        }}
    public void ProductRecords(){
       list<Product2>pro=[select Id,Name,ProductCode from Product2 limit 10];
        for(Product2 p:pro){
            system.debug('The Product Records are '+p);
            system.debug('The Product Records are '+p.Id);
            system.debug('The Product Records are '+p.Name);
            system.debug('The Product Records are '+p.ProductCode);
        }
    }
}