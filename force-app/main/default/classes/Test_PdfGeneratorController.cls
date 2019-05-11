@isTest
private class Test_PdfGeneratorController
{

  
  static pdfproject__c pdfproject;
  static
  {
    
    pdfproject= new pdfproject__c ();
    pdfproject.Name__c = 'Test Account';
    insert pdfproject;
    
  }

  static testMethod void testPdfGenerator() 
  {

    PageReference pref = Page.PDFtest6;
    pref.getParameters().put('id',pdfproject.id);
    System.Test.setCurrentPage(pref);
        
    PdfGeneratorController con = new PdfGeneratorController();    
           
    System.Test.startTest();
    
    // populate the field with values
    con.parentId = pdfproject.id;
    con.pdfName = 'My Test PDF';

    // submit the record
    pref = con.savePdf();

    // assert that they were sent to the correct page
    System.assertEquals(pref.getUrl(),'/'+pdfproject.id);

    // assert that an attachment exists for the record
    System.assertEquals(1,[select count() from attachment where parentId = :pdfproject.id]);
    
    System.Test.stopTest(); 

  }
}