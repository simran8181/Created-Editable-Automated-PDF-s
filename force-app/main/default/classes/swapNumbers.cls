public class swapNumbers 
{
	public void swap(integer a , integer b)
    {
        integer temp;
        
        system.debug('Before swapping number a :' +a+'Before swapping number b :' +b);
    
        temp = a;
       	a = b;
        b =temp;
        
        system.debug('swapped number a :' +a+'swapped number b :' +b);
    }
}