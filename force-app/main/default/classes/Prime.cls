public class Prime 
{
	
    public static void chkprime(Integer n)
    {
        if (n != 2 && Math.mod(n, 2) == 0)
		system.debug(n+ 'Not prime');
   		
        //if not, then just check the odds
    	for(Integer i=3; i*i<=n; i+=2) 
		{
        	if(Math.mod(n, i) == 0)
            system.debug(n+ 'Not prime');
    	}
    		system.debug(n+ 'Prime');
    }
}