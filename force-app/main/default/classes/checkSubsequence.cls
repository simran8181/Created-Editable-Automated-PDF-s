public class checkSubsequence 
{
	public static void chksubsequence(string str2)
    {
        boolean result;
        //boolean result = pattern.matches(str1, str2);
        result = Pattern.compile('[a-z]').matcher(str2).matches();

        if(result == true)
        {
            system.debug('Valid subsequence');
        }
        else
        {
              system.debug('Invalid subsequence');
        }
        
    }
}