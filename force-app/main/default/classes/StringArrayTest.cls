public class StringArrayTest 
{
	public static list<string> generateStringArray(integer n)
    {
        list<string> myarray = new list<string>();
        for (integer i = 0 ; i<n ; i++)
        {
            myarray.add('Test '+i);
            system.debug(myarray[i]);
        }
 	       
        return myarray;
    }
}