global class URIAuthReq {
    
    global String auth_URI='';
    
    public URIAuthReq(String key, String redirect_url){ 
        String redirect_URI='https://accounts.google.com/o/oauth2/v2/auth?'+
                            'client_id=217224127060-9urqnc30j35umbrd67toi47tgrf7kjce.apps.googleusercontent.com'+
            				'&response_type=code'+
            				'&scope=https://www.googleapis.com/auth/drive'+
            				'&redirect_uri='+redirect_url+
            				'&state=security_token%3D138r5719ru3e1%26url%3Dhttps://oauth2-login-demo.example.com/myHome'+
            				'&login_hint=shubham30372@gmail.com&access_type=offline';
        auth_URI=redirect_URI;
    }

}