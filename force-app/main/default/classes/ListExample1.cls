public class ListExample1 {
    public void disp(){
        list<integer>num=new list<integer>{10,20,34,12,12,23,24,23};
        system.debug('The List Numbers are'+num);
        system.debug('The 3rd number is '+num[2]);
        num.remove(4);
        system.debug('After removed '+num);
        num.add(4, 100);
        system.debug('Add the new element'+num);
        system.debug('The List element size is '+num.size());
        num.clear();
        system.debug('After clear '+num);
        
        list<contact>con=new list<contact>();
        Contact c=new Contact();
        c.FirstName='Sam';
        c.LastName='R';
        c.Phone='12345';
        con.add(c);
        Contact c1=new Contact();
        c1.FirstName='Ravi';
         c1.LastName='S';
        c1.Phone='12345';
        con.add(c1);
        system.debug('The Contact records are '+con);
    }
}