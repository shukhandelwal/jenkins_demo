public class AuthenticateGoogleAppWithSalesforce {
    
    private String key='217224127060-9urqnc30j35umbrd67toi47tgrf7kjce.apps.googleusercontent.com';
    private String client_secret='VpRZsbtCSvHy1NXhOX_mvBxq';
    private String redirect_uri='https://'+Url.getSalesforceBaseUrl().getHost()+'/apex/GoogleDriveApp';
    private String identificationTokenFromGoogle;
    private String accessToken;
    
    public AuthenticateGoogleAppWithSalesforce(){
        
        identificationTokenFromGoogle=ApexPages.currentPage().getParameters().get('code');
        
        if(identificationTokenFromGoogle!='' && identificationTokenFromGoogle!=null){
            
            AccessToken();
        }
        
        
    }
    
    public void AccessToken(){
        
        HttpRequest request=new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('https://accounts.google.com/o/oauth2/token');
        request.setHeader('content-type', 'application/x-www-form-urlencoded');
        String messageBody='code='+identificationTokenFromGoogle+'&client_id='+key+'&client_secret='+client_secret+'&redirect_uri='+redirect_uri+'&grant_type=authorization_code';
        request.setHeader('Content-length', String.valueof(messageBody.length()));
        request.setBody(messageBody);
        request.setTimeout(60*1000);
        
        System.debug('Redirect Uri'+redirect_uri);
        
        Http http=new Http();
        HttpResponse response=http.send(request);
        JSONParser parser=JSON.createParser(response.getBody());
        
        System.debug('the response from authorization code '+response.getBody());
        
        
        
        
        
    }
    
    
    public PageReference authenticateApp(){
        PageReference pf= new PageReference(new URIAuthReq(key,redirect_uri).auth_URI);
        
        return pf;
        
    }
    

}