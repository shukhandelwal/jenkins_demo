@RestResource(urlMapping='/Case/*')
global with sharing  class CaseManager {
    
    global static Case getCaseByID(){
        
        RestRequest request=RestContext.request;
        
        String caseID=request.requestURI.subString(request.requestURI.lastIndexOf('/')+1);
        
        Case caseResult = [SELECT CaseNumber,Subject,Status,Origin,Priority FROM Case WHERE Id = : caseID ];
        
        return caseResult;
        
        
    }
    

}