@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    
    global HTTPResponse respond(HttpRequest request){
        
        HttpResponse mock=new HTTPResponse();
        mock.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        return mock;
        
    }

}