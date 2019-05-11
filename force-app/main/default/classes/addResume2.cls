public class addResume2 
{
	public pdfproject__c testobj2{get;set;}
     public blob attc{get;set;}
     private Attachment myfile;
    
    public Attachment getmyfile()
    {
    	myfile = new Attachment();
    	return myfile;
    }
    public addResume2(ApexPages.StandardController controller)
    {
		this.testobj2 = (pdfproject__c) controller.getrecord();
	}

    public pagereference savetest()
    {
		insert testobj2;
    	system.debug('******************' + attc );

    	Attachment a = new Attachment(parentid=testobj2.id, Name = myfile.name , Body = myfile.body);
    	insert a;
    	return null;
    }

}