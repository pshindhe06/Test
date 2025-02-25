public class ExceptionExample
{
public static void disp(integer i)
{
try
{
 if(i>5)
 {
 system.debug('The record value is correct '+i);
 }
      
}
catch(exception e)
{
 
}
finally
{
 i=10*i;
 system.debug('The record value is '+i);
}
}
}