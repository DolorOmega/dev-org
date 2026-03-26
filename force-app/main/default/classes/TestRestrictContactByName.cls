@isTest
public class TestRestrictContactByName {
    
    @isTest
    static void testTrigger(){
        Contact cont = new Contact(FirstName = 'Test', LastName = 'INVALIDNAME', AccountId = '0011Y00002HcQE7QAN');
        
        Test.startTest();
        Database.SaveResult result = Database.insert(cont);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }

}