@istest
private class restconsume_test {
    public static testmethod void testconsume(){
        restconsumedemmock rem=new restconsumedemmock();
        Test.setmock(HttpCalloutMock.class, rem);
        restconsuming.consume();
    }
 
}