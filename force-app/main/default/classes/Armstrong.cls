public class Armstrong 
{ 
    /* Function to calculate x raised to the 
       power y */
	public static integer power(integer x, long y) 
	{ 
		if( y == 0) 
			return 1; 
		
        if (math.mod(y , 2) == 0) 
			
            return power(x, y/2)*power(x, y/2); 
		
        return x*power(x, y/2)*power(x, y/2); 
	} 

	/* Function to calculate order of the number */
	public static integer order(integer x) 
	{ 
		integer n = 0; 
		while (x != 0) 
		{ 
			n++; 
			x = x/10; 
		} 
		return n; 
	} 

	// Function to check whether the given number is 
	// Armstrong number or not 
	public static boolean isArmstrong (integer x) 
	{ 
		// Calling order function 
		integer n = order(x); 
		integer temp=x, sum=0; 
		while (temp!=0) 
		{ 
			integer r = (math.mod(temp ,10)) ; 
			sum = sum + power(r,n); 
			temp = temp/10; 
		}
        // If satisfies Armstrong condition
        if(sum == x)
        {
            system.debug(x+ 'Satisfies Armstrong condition');
            return (sum == x);
		}
        else
            system.debug(x+ 'Not Satisfies Armstrong condition');
            return (sum != x);
   }
}