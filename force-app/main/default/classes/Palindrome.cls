public class Palindrome
{
	public static void CheckPalindrome (String original, String reverse) 
    { 
            for(Integer i = original.length()-1; i >= 0; i--)
            {
                reverse = reverse + original.substring(i, i+1);
            }
            if(original.equals(reverse))
            {
                System.debug(original+ 'String is Palindrome');
            }
            else
            {
                System.debug(original+ 'String is not Palindrome');
            }
    }
}