public class ContactSearch 
{
      public static List<Contact>  searchForContacts (string lastname , string Postalcode)
      {
      	List<Contact> Contacts = [Select ID,Name from Contact where LastName = :lastname AND MailingPostalCode = :Postalcode ];
		system.debug(contacts);        
          return Contacts;
      	}
    
       
}