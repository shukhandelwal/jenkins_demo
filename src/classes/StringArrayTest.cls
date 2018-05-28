public class StringArrayTest {

    public static List<String> generateStringArray(Integer no){
        List<String> returnList=new List<String>();
        Integer count=0;
        while(no!=count){
            returnList.add('Test '+count);
            count++;
        }
        
        return returnList;
    }
}