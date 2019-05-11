trigger trigger14 on Contact (before delete)
{
        
        list<Id> Ids = new list<Id>();
        for(Contact c:Trigger.old)
        {
            Ids.add(c.Id);
        }
    list<Contact_Relationship__c> obj = [select id,ConRelation__c from Contact_Relationship__c where ConRelation__c IN :Ids];
   delete obj;
 }