public class opportunityController 
{
         Opportunity request;
        
         private ApexPages.StandardController controller;
   		 public opportunityController(ApexPages.StandardController controller) 
         {
        	   this.controller = controller;
         }
    
    public PageReference saveAndSuccess()
    {
        if(controller.save() !=null)
        {
        	PageReference successPage = Page.NewOppVF;
        	successPage.setRedirect(true);
        	successPage.getParameters().put('id',controller.getId());
        	return successPage;
        } 
        return null; 
	}
}