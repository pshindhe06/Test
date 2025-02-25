public class IndustryRevenue {
    public void disp( integer AnnualRevenue){
        string Industry;
        if(AnnualRevenue==50000){
         Industry='Banking';
         system.debug('The Industry is '+Industry);
        }
        else if(AnnualRevenue>50000){
            Industry='Energy';
            system.debug('The Industry is '+Industry);
        }
        else if(AnnualRevenue<50000){
            Industry='Agriculture';
            system.debug('The Industry is '+Industry);
        }
            
    }
    
}