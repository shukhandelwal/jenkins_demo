public with sharing class AuraContactController {
    
    @AuraEnabled
    public static List<Contact> getAllContact(){
        return [SELECT id , name , phone FROM Contact LIMIT 50];
    }
    
    @AuraEnabled
    public static List<Contact> getContactByName(String searchKey){
        
        String searchKeyDB = '%'+ searchKey +'%'; 
        return [Select id,name,phone from Contact where name like :searchKeyDB limit 50 ];
    }
    
    @AuraEnabled
    public static Contact getContactById(String contactID){
        return [Select id , name ,Account.Id from Contact where id =: contactID];
    }
}