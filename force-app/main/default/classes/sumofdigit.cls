public class sumofdigit 
{
	public integer getSum(integer n) 
    { 
        integer sum=0;
          
        while (n != 0) 
        { 
            sum = sum + (math.mod(n , 10)); 
            n = n/10; 
        } 
		system.debug('sum of digits is'+sum);        
        return sum; 
    } 
}