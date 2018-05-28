global  class SampleBatchInterfaced implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select name from Account');
    }
    
    global void execute(Database.BatchableContext bc,List<Account> accounts){
        for(Account acc:accounts){
            acc.Name=acc.Name+'-';
        }
        
        update accounts;
    }
    
    global void finish(Database.BatchableContext bc){
        
    }

}