public class FloydsTriangle 
{
	public static void print(integer n)
    {
        integer c,d,num = 1;
        for ( c = 1 ; c <= n ; c++ )
      	{
        	 for ( d = 1 ; d <= c ; d++ )
         	{
            	System.debug(num+' ');
            	num++;
         	}
 		System.debug('');
      }
    }
}