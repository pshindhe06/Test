@isTest
public class Mr_Ms_title_Contact_test {
  
    Public static testmethod Void insertcontact(){
        Contact C1 = New contact();
        C1.firstName =  'Prakash __ 001';
        C1.LastName = 'Shindhe';
        C1.Phone = '9879832202';
        insert C1;
        
        Contact C2 =  [Select firstName,LastName,title from contact where id = :C1.Id];
        System.assertEquals('Mr/Ms', C2.Title);	
    }

}