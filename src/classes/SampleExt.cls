public class SampleExt {
    
    public List<Account> alist{get; set;}    
    public Account acc;
    public boolean flag {get; set;}    
    public SampleExt (ApexPages.StandardController controller){
        acc=(Account)controller.getRecord();
        alist=[select ID ,Name from Account where Id=:acc.Id];
        flag=false;
    }
    
    public PageReference Save(){
        flag=true;
        if(flag==true){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Error'));
            return null;
        }else{
            return null;
        }
        
    }

}