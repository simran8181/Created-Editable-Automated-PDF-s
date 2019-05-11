public class FibonaciiSeries 
{
    public static void FS()
    {
		List<Decimal> fibo = new List<Decimal>{1, 1}; //initialize first two numbers
		for(Integer i = 2; i < 100; i++)
		{
    		Decimal nextFiboNum = fibo[i-1] + fibo[i-2]; //sum of previous two numbers
    		fibo.add(nextFiboNum); //Add the new number into sequence
		}    
 		System.debug('The 7th number is: ' + fibo[7]); 
	}
}