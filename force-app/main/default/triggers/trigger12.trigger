trigger trigger12 on Contact (after insert) 
{
	if(trigger.isAfter)
 	{
 		if(trigger.isInsert)
 		{
 			triggerclass12 ConIns = New triggerclass12();
 			ConIns.createContactRelationshipByContact(trigger.New);
		}
 	}
}