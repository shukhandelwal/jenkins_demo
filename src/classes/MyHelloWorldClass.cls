public class MyHelloWorldClass{

public static void applyDiscountOnPrices(Book__c[] books){
    for(Book__c b:books){
        b.Price__c*=0.9;
    }

}


}