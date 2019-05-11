public class leapyear 
{
    public integer year;
    public leapyear(integer year)
    {
        this.year=year;
    }
	public boolean checkYear() 
    { 
       if (math.mod(year,400) == 0)
       {
           system.debug('true1');
            return true; 
       }
        else if (math.mod(year,100) == 0) 
        {     
            system.debug('false1');
            return false; 
        }
        else if (math.mod(year,4) == 0) 
        {   
            system.debug('true2');
            return true;
        }
        else
            system.debug('false2');
        	return false; 
        
    }
}