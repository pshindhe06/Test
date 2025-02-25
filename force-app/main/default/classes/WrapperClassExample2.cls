public class WrapperClassExample2 {
    
    
    Public void insertAccount(){
        List<AccountInfo> accounts = new List<AccountInfo>();
        
        AccountInfo info = new AccountInfo();
        info.name = 'Sam';
        info.phone = '123';
        info.rating = 'Hot';
        accounts.add(info);
        
        AccountInfo info1 = new AccountInfo();
        info1.name = 'Raju';
        info1.phone = '236';
        info1.rating = 'Warm';
        accounts.add(info1);
        
        AccountInfo info2 = new AccountInfo();
        info2.name = 'Shiva';
        info2.phone = '456';
        info2.rating = 'Cold';
        accounts.add(info2);
        
        List<Account> acclist  = new List<Account>();
        
        for(AccountInfo acc :accounts){
            Account ac = new Account();
            ac.Name = acc.Name;
            ac.phone = acc.phone;
            ac.Rating = acc.rating;
            acclist.add(ac);
        }
        insert acclist;
    }
    
    Public class AccountInfo{
        
        Public string name;
        Public string phone;
        public string rating;
    }
}