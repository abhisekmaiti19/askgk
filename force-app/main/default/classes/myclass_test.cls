@istest
private class myclass_test{
   /* @testsetup
       static void mydo(){
       Account ac = new Account();
       ac.name = 'abhisek';
       insert ac;

    } */

        public static testmethod void doTest(){
        
                new myclass().myeth();
                
                //system.assertequals(100,new myclass().domath(2,4),'error and error');
               //Account act = [select id, name from account where name='abhisek'];
                //new myclass().dohello(act);
                
                Account act = myclass_factory.getAccount();
        
        }

}