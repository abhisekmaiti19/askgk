@isTest
private class anotherassignment_test {
    @istest
    public static void anotherassignment_test_method(){
        system.assertequals('Abhisek Maiti',anotherassignment.hello('Abhisek'),'Success');
        system.assertequals('Sorry',anotherassignment.hello('Ayan'),'Success');
        system.assertequals('Rituja',new anotherassignment().alltrainee('Abhisek Maiti')[0],'Success');
    }
}