@isTest
private class AnimalLocatorTest {

    @isTest
    static void AnimalLocatorMock (){
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String response=AnimalLocator.getAnimalNameById(1);
        System.assertEquals('chicken', response);
    
        

        
    }
}