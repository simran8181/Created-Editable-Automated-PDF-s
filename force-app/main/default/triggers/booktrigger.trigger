trigger booktrigger on Book__c (before insert,before update) 
{
	 List<Book__c> books = Trigger.new;
  	 bookclass.applyDiscount(books);
 }