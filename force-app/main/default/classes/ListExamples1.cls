public class ListExamples1 {
 public static void listofelements()
 {
     list<integer>a=new list<integer>();
     a.add(10);
     a.add(20);
     a.add(30);
     a.add(40);
     a.add(50);
     system.debug('The List values are' +a);
     a.set(0, 50);
     a.set(4,10);
     system.debug('The set method values is'+a);
     integer acc=a.get(2);
     system.debug('The get value is'+acc);
     a.remove(2);
     system.debug('The removed value is'+a);
     a.clear();
     system.debug('The list values are removed'+a);
 }

}