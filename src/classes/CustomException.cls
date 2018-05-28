public class CustomException extends Exception {
    
    
    public override  String getMessage(){
    //System.debug('You have crossed 101 limit');
        return 'You have crossed 101 limit';
    }
    
 
}