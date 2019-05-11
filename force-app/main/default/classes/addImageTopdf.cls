public with sharing class addImageTopdf 
{
    public attachment att{get;set;}
    public Id parentId{get;set;}
    
    public addImageTopdf(ApexPages.StandardController controller)
    {
		att=new attachment();
		parentId=controller.getId();       
    }
    public void UploadImage()
    {
        att.parentId=parentId;
        att.name='Image';
        insert att;
        att=new attachment();
    }
    
    public Id getImageId()
    {
        Id result=null;
        List<attachment> images = [select Id from attachment where name='Image' and parentId =: parentId order by CreatedDate DESC];
    	if(images.size()>0)
        {
            result=images[0].id;
        }
        return result;
    }
}