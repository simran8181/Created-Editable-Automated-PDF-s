public class triggerclass12 
{
	public void createContactRelationshipByContact(list<Contact> List_Contacts)
 	{
 		list<Contact_Relationship__c> ConList= new list<Contact_Relationship__c>();
 		for(Contact newconts:List_Contacts)
 		{
 			if(newconts.Contact_Relationship__c== true)
 			{
 				Contact_Relationship__c CR = new Contact_Relationship__c();
 				CR.Name=newconts.Lastname;
 				CR.ConRelation__c= newconts.id;
 				ConList.add(CR);
 			}
 		}
 		insert ConList;
	}
}