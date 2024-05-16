@isTest
private class RestDemoTest {
    @isTest
    static void testGetFun() {
        // Insert test data
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        
        // Call the REST service method
        Test.startTest();
        List<Account> accounts = RestDemo.getFun();
        Test.stopTest();
        
        // Assert the results
        System.assertEquals(1, accounts.size());
        System.assertEquals('Test Account', accounts[0].Name);
    }
    
    @isTest
    static void testPostFun() {
        // Call the REST service method
        Test.startTest();
        Id accountId = RestDemo.postFun('New Account');
        Test.stopTest();
        
        // Assert the results
        Account insertedAccount = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        System.assertNotEquals(null, insertedAccount);
        System.assertEquals('New Account', insertedAccount.Name);
    }
}