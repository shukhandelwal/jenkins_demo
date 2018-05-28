public with sharing class DisplayAccountRecord {
    
    @AuraEnabled
    public static List<Account> getAccounts(){
        
        return [SELECT Name , AccountNumber , Website FROM Account];   
    }
 
}