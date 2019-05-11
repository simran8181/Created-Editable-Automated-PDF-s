public class accid 
{
	public static void test()
    {
        Account acct = new Account(Name='testid Account');
		insert acct;

		system.debug('Inserted Account Id is = '+acct.Id);
	
    }
}