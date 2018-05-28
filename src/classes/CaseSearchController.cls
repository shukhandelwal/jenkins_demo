public class CaseSearchController {

    public String CaseNumber{get; set;}
    
    public List<Case> caseResultList{get; set;}
    
    public ApexPages.StandardController controller;
    
    public CaseSearchController(ApexPages.StandardController controller){
        
        this.controller=controller;
    }

    
    public PageReference search(){
        Case caseObj=(Case)controller.getRecord();
        caseResultList=[select CaseNumber,Origin from Case where CaseNumber=:CaseNumber];       
        PageReference ref = new PageReference('/apex/Account_Search_Page');        
        ref.setRedirect(false);
        return ref;
    }
    
    
    
    
    
    
    
}