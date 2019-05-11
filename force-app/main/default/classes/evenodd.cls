public class evenodd 
{
   	public integer i;
    public evenodd(integer i)
    {
        this.i = i;
    }
	public void chk()
    {
		if(math.mod(i, 2) == 0)
			system.debug('this is even: ' + i);
   		else
			system.debug('this is odd: ' + i);
	}
}