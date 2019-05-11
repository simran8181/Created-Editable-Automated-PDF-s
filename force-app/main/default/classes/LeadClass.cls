public class LeadClass 
{
	public void addHelloWorld(List<Lead> leadlist)
 	{
 		for (Lead l:leadlist)
 		{
 			l.Salutation = 'Dr.'+ l.Salutation;
 		}
 	}
}