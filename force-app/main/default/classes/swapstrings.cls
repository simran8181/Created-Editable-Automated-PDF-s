public class swapstrings
{
	public static void swap(String a , String b)
    {
        String temp;
        
        system.debug('Before swapping String a :' +a+'Before swapping String b :' +b);
    
        temp = a;
       	a = b;
        b =temp;
        
        system.debug('swapped String a :' +a+'swapped String b :' +b);
    }
}