public class SampleSchedulable implements Schedulable {
    public void execute(System.SchedulableContext sc){
        
        Database.executeBatch(new SampleBatchInterfaced());
    }

}