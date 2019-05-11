trigger trigger13 on Contact_Relationship__c (before update) 
{
	if(trigger.isBefore)
 	{
 		if(trigger.isUpdate)
 		{
 			//call the handler for the before update trigger event
 			triggerclass13 ConRelUpd = New triggerclass13();
 			ConRelUpd.updateContactRelationshipNameByOwner(trigger.New);
 		}
 	}
}