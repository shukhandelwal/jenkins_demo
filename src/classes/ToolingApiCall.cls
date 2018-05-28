public class ToolingApiCall {

    
    public String codeCvgData(){
        
        String query='Select NumLinesCovered,NumLinesUncovered,TestMethodName from ApexCodeCoverage';
        
        String envUrl=URL.getSalesforceBaseUrl().toExternalForm()+'/services/data/v28.0/tooling/query/?q=' + EncodingUtil.urlEncode(query, 'UTF-8');
        HttpRequest req = new HttpRequest();
        req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionID());
        req.setHeader('Content-Type', 'application/json');
        req.setEndpoint(envUrl);
        req.setMethod('GET');
        Http h = new Http();
        return h.send(req).getBody();

    }
        
    
}