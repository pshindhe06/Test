public class WrapperClassExample1 {
    public void InsertRecords(){
        list<AccountInfo> acc=new list<AccountInfo>();
        AccountInfo a=new AccountInfo();
        a.Name='Wrapper Test';
        a.phone='12345';
        a.rating='Hot';
        acc.add(a);
        
        AccountInfo b=new AccountInfo();
        b.name='Wrapper Testing';
        b.phone='54321';
        b.rating='cold';
        acc.add(b);
        
        list<Account>accounts=new list<Account>();
        for(AccountInfo a1:acc)
        {
            Account z=new Account();
            z.name=a1.name;
            z.Phone=a1.phone;
            z.Rating=a1.rating;
            accounts.add(z);
        }
        
        insert accounts;
    }
    public class AccountInfo{
        public string Name;
        public string phone;
        public string rating;
    }
}