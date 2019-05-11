public class DecimaltoBinary 
{
	public void decToBinary(integer n) 
    {  
        integer[] binaryNum = new integer[1000]; 
        
        integer i = 0; 
        while (n > 0)  
        {  
            binaryNum[i] = (math.mod(n , 2)); 
            n = n / 2; 
            i++; 
        } 
    
        for (integer j = i - 1; j >= 0; j--) 
            System.debug(binaryNum[j]); 
    } 
}