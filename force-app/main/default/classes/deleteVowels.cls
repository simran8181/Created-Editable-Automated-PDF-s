public class deleteVowels 
{
	public static void deletevowel(string str)
    {
        if(str != null)
        {
            string newstr = str.replaceAll('[aeiou]', '');
        	system.debug('String after deleting vowels from it :' +newstr);
        }
        
    }
}