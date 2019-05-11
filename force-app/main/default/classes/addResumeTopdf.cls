public with sharing class addResumeTopdf
{
    public Id parentId{get;set;}
	public addResumeTopdf(ApexPages.StandardController controller)
    {
        parentId=controller.getId();     
    }
 	public Attachment attachment 
    {
  		get 
        {
      		if (attachment == null)
        	attachment = new Attachment();
      		return attachment;
    	}
  		set;
  	}

  	public PageReference upload()
    {

    	attachment.OwnerId = UserInfo.getUserId();
    	attachment.ParentId = parentId; // the record the file is attached to
    	attachment.IsPrivate = true;

    	try
        {
      		insert attachment;
    	}
        catch (DMLException e)
        {
      		ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error uploading attachment'));
      		return null;
    	}
        finally
        {
      		attachment = new Attachment(); 
    	}

    		ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Attachment uploaded successfully'));
    		return null;
  }
}