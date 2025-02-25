public class PP1 {
public static void acc(string name)
    {
        list<Account> a=[select Id, Name from Account where name like '%Prakash%'];
        list<Account> a1=new list<Account>();
        a1.addAll(a);
       
        update a1;
    }
}