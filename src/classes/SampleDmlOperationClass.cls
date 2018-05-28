public class SampleDmlOperationClass {
    
    
    public static void sampleDMlOperation(){
        
        try{
              throw new CustomException();
        System.debug('number of queries before'+System.Limits.getQueries());
        
        Account[] account=[select Name from Account limit 100];
        
        System.debug('number of queries after'+System.Limits.getQueries());
            
         
        }
        catch(CustomException e)
        {
           System.debug(e.getMessage());
        }
        
        
    }
    
    public static void sample2(){
        
        Account[] acc=[select Name from Account where Name='shubham Khandelwal'];
   
    }
    
    
    public static void updateAccountValue(String oldName ,String newName){
        
       Account acc=[select id,Name from Account where Name=:oldName limit 1];
       //Account a=acc.getSObjectType();
       //a.Name=newName;
       //a.
       acc.Name=newName;
       update acc;
        
      
        
   
       
    }
     public static void sample3(){
     System.debug('ahahahahahah');
     }
    
    

}