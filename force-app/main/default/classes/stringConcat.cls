public class stringConcat 
{
	public static void strconcat(string str1 , string str2)
    {
      string newString = str1 + str2 ;
      system.debug('New concateted string is : ' +newString);
    }
    
}


/* String newString = 
   str1.substring(0, str1.indexOf('simran')) + str2 + str1.substring(str1.indexOf('simran'), str1.length());
   system.debug('New concateted string is : ' +newString);
*/