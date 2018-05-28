public class AnimalLocator {
    
    public  static String getAnimalNameById(Integer Id){
        String name=null;
        Http http=new Http();
        HttpRequest request =new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+Id);
        HttpResponse response=http.send(request);
        if(response.getStatusCode()== 200){
            
            Map<String,Object> result=(Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            Map<String,Object> animalAttribute=(Map<String,Object>)result.get('animal');
            name=String.valueOf(animalAttribute.get('name'));
        }
        return name;
        
    }

}