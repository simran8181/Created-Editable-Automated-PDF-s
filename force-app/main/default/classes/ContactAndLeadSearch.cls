public class ContactAndLeadSearch 
{
	public static list<list<SObject>> searchContactsAndLeads(string lastname)
    {
        list<list<SObject>> searchlist = [FIND :lastname IN NAME fields RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
        //Contact[] searchContacts = (Contact[])searchList[0];
		//Lead[] searchLeads = (Lead[])searchList[1];
        //system.debug('Contact is :'+searchContacts+'Lead is :'+searchLeads);
        system.debug('searchlist is :'+searchlist);
        return searchlist;
    }
}