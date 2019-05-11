public class factorials
{
	 	public integer i,fact=1;
  		public integer no;      //It is the number to calculate factorial  
    	
    	public factorials(integer no)
        {
            this.no=no;
        }
    	public void findfactorial()
    	{
 	 		for(i=1;i<=no;i++)
  			{  
      			fact=fact*i;  
 			}  
    		
            System.debug('Factorial of '+no+' is: '+fact);  
 		}
	
}