public class changecase 
{
	public static void change(string str)
    {
        string upper,lower;
        upper = str.toUpperCase();
        lower = str.toLowerCase();
        system.debug('Upper case : ' +upper);
        system.debug('Lower case : ' +lower);
    }
}