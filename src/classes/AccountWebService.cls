@RestResource(urlMapping='/AccountDetails')
global with sharing class AccountWebService {
    
    @HttpGet
    global static List<Account> getAccountDetails(){
        
        List<Account> accountList=[SELECT Id, Name from Account limit 10];
        
        return accountList;
    }
    
}