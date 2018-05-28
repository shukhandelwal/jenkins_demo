public class SampleTest {
    
    public static void todaysDate(){
        
        System.debug('Today\'s DateTime'+System.now());
    }
    
    public static  void addDays(Integer Days){
        Date dt=System.Date.today();
        System.debug('Days Added'+dt.addDays(Days));
    }


}