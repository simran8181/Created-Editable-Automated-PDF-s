public class AddnNumbers 
{
    public integer add(integer n) 
    { 
        integer result = 0;  
       
        for (integer x = 1; x <= n; x++) 
        {
            result =result + sumOfDigits(x); 
        }
        system.debug('Result of sum of total numbers are  : '+result);
        return result; 
    } 
    
    public integer sumOfDigits(integer x) 
    { 
        integer sum = 0; 
        while (x != 0) 
        { 
            sum =sum +(math.mod (x , 10)); 
            x   = x / 10; 
        } 
        system.debug('Total nummbers are : '+sum);
        return sum; 
    } 
        
}