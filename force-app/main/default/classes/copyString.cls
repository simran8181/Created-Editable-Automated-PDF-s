public class copyString 
{
	public static void copystr(string str1 , string str2)
    {
        integer i = 0;
        while(i < str1.length())
        {
            str2 = str1;
        	i++;
        }
        system.debug('Copied string is : ' +str2);
    }
}