public class test
{
	public test(ApexPages.StandardController controller)
    {
    }
    
    public void saveAttach()
    {
        PageReference pdfPage = Page.MyAttach_VF2;
        Blob pdfBlob = pdfPage.getContent();
        Attachment a = new Attachment(parentId = ApexPages.currentPage().getParameters().get('id'), name='Document' + '.pdf', body = pdfBlob);
        insert a ;
    }
    
}