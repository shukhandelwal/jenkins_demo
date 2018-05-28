public class AccountHandler {
    
    public static Account insertNewAccount(String Name_1){
        
        Account acc=new Account(Name=name_1);
        try{
            if(Name_1==''){
                return null;
            }  
        insert acc;
        }catch(DmlException e){
            e.getMessage();
        }
        return acc;
        
        //sample comments to check sync
        
        //comment
    }

}