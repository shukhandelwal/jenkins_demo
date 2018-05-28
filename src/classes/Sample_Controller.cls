public class Sample_Controller { 
    
    public Boolean randomFlag{get; set;}
    public String accountName{get; set;}
    public String accountNumber{get; set;}
    public List<Account> resultList{get; set;}
    public List<SelectOption> picklistOption{get; set;}
    public String regionSelectedOption{get; set;}
    
    public Sample_Controller()
    {
     randomFlag=false;
     accountName='';   
     resultList=new List<Account>();   
     picklistOption=new List<SelectOption>();
     initVariables();
    }
    
    public void initVariables(){
        
        Schema.DescribeFieldResult results=Account.region__c.getDescribe();
        for(Schema.PicklistEntry entry:results.getPicklistValues()){
            picklistOption.add(new SelectOption(entry.getValue(),entry.getLabel()));
        }
        
        System.debug('the values are :'+picklistOption);
        
    }
    
    
    public void search(){
        
        resultList=[Select Name, AccountNumber from Account where Name=:accountName];
        System.debug(resultList);
    }
    
    
    public PageReference viewAccount(String ID){
        
        PageReference ref=new PageReference('/'+ID);
        ref.setRedirect(true);
        return ref;
        
    }
    
    
}