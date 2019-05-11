public class newcontroller
{
    public newcontroller(ApexPages.StandardController controller)
    {
    }
    
	public void attach()
    {

		Attachment myAttach = new Attachment();

		myAttach.ParentId = 'xxxxxxxxxx';//Id of the object to which the page is attached

		myAttach.name = 'DisplayName.pdf';

		PageReference myPdf = Page.PDFtest2;//myPdfPage is the name of your pdf page

		myAttach.body = myPdf.getContentAsPdf();

		insert myAttach;

	} 
}