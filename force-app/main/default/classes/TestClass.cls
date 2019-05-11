public class TestClass 
{
    public void meth1()
    {
        try
        {
            Account acc = new Account();
            insert acc;                  
        }
        catch(Exception e)
        {
            System.debug('Exception'+e.getMessage());
        }
    }
}