trigger trigger15 on Contact (after undelete) 
{
    list<Id> Ids = new list<Id>();
 	for(Contact c:Trigger.new)
 	{
 		Ids.add(c.Id);
    }
    
 list<Contact_Relationship__c> obj= [select id from Contact_Relationship__c where isDeleted=TRUE and ConRelation__c in :Ids];
     undelete obj;
    
}