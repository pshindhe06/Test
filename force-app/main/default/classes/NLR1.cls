public class NLR1 {
   /* public static void E()
    {
       enum A{1,2,3,4};
        A obj=a.1;
        System.debug(obj);
    }*/

    public static void Mydetails()
    {
        string name='Navalur';
        system.debug(name);
        string Dist='Dharwad';
        system.debug(Dist);
        string state='Karnataka';
        system.debug(state);
        
    }
    public static void Myage(integer r)
    {
        if(r==50)
        {
            system.debug('Banking');
        } else if (r>50){
            system.debug('Energy');
        } else
        {
            system.debug('Agriculture');
        }
    }
    
    public static void MyName()
    {
        list<string>Studentname= new list<string>{'Ram', 'Naveen', 'Navalur','Bird'};
            for(string std:Studentname)
        {
            system.debug(+std);
            if(std=='Navalur')
            {
                system.debug('It is Village');
            }
            else if(std=='Naveen')
            {
                system.debug('Engineer');
            }
            else if(std=='Bird')
            {
                system.debug('This is bid');
            }
        }
    }
    

}