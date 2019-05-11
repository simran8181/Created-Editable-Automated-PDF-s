public class removewhitespace 
{
	public static void removespace(string str)
    {
        system.debug('String after removing white spaces : ' +str.replaceAll( '\\s+', ''));
    }
}