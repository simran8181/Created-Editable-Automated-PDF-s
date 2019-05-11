public class compareString 
{
	public static void chkstr(string str1 , string str2)
    {
        boolean result;
        result = str1.equals(str2);
        if(result == true)
        {
            system.debug('Both strings are same');
        }
        else
        {
            system.debug('Both strings are not same');
        }
    }
}