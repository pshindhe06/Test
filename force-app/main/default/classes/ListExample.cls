public class ListExample 
{
public static void disp()
{
 list<string> a=new list<string>();
 system.debug('The Records of List is '+a);
  a.add('Karnataka');
  a.add('Dharwad');
  a.add('Navalur');
  a.add('Hubli');
  system.debug('The add() method new records are '+a);
   string acc=a.get(3);
   system.debug('The get() method records are '+acc);
   a.set(3,'Karnataka');
    system.debug('The set() method records are'+a);
    a.clear();
    system.debug('The clear() method records are '+a);
}
}