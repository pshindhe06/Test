public class Assignment1 {
    public string BankName;
    public string BankCity;
    public string BankState;
    public integer BankPincode;
    
    public void disp(){
        long AccountNumber=123456789;
        string password='Navalur@111';
        integer mob=987654321;
        string pancard='dslps0514m';
        Date DOB=date.parse('1988/10/06');
        BankName='ICICI';
        BankCity='Dharwad';
        BankState='Karnataka';
        BankPincode=580001;
        system.debug(DOB);
        
    }
    public void disp1(){
        BankName='SBI';
        BankCity='Dharwad';
        BankState='Karnataka';
        BankPincode=580001;
    }

}