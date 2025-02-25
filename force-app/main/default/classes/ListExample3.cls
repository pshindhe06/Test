public class ListExample3 {
    public void ListOfRecords(){
    list<list<integer>>Marks=new list<list<integer>>();
        list<integer> Sem1=new list<integer>{12,23,67,10,11};
        list<integer> Sem2=new list<integer>{90,91,92,93,95};
        Marks.add(Sem1);
        Marks.add(Sem2);
        system.debug('The two sem marks are '+Marks);
        system.debug('The two sem marks are '+Marks.size());
        Boolean m=Sem1.Contains(11);
        system.assertEquals(True, m);
        system.debug('The List contains the value? '+m);
        Boolean m1=Sem2.contains(50);
       system.assertEquals(False, m1);
        system.debug('The List contains the value? '+m1);
    }
}