@RestResource(urlMapping='/AccountDetail/*')
global with sharing class AccountWebService2 {
    
    @HttpGet
    global static Account getAccountDetails(){
        
        RestRequest req=RestContext.request;
        String AccountName=req.requestURI.subString(req.requestURI.lastIndexOf('/') + 1);
        
        Account accountList=[SELECT Id, Name,AccountNumber,BillingAddress,Phone,Website from Account where Name =:AccountName];
        
        return accountList;
    }
    
}