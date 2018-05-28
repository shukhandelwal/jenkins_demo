public with sharing class ExpenseController {

    @AuraEnabled
    public static Expense__c saveRecords(Expense__c expense){
        upsert expense;
        return expense;
        
    }
    
}