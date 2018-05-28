public with sharing class URLShortnerController {

    public String inputURL{get; set;}
    public Boolean isConverted{get; set;}
    
    public PageReference convert(){
     
     URLShortner__c urlShortner=new URLShortner__c(CorrectURL__c=inputURL);
     insert urlShortner;
    
    URLShortner__c obj=[select ID from URLShortner__c];
    
    
    isConverted=true;
    return null;
    }
}