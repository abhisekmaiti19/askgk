@isTest
private class accList_test{
    static testmethod void mytest(){  
        List<Account> acclist = new List<account>();
        for(integer i = 0; i<100; i++){
                Account acc = new Account();
                acc.name = 'Hey Account' + i ;
                acclist.add(acc);
        }
        insert acclist;
        test.starttest();
            accountbatch ab = new accountbatch();
            database.executebatch(ab);
        test.stoptest();
        //verify accounts updated
        //Account[] accupdate = [Select id, name from account];
        //system.assert(accupdate[0].name.contains('updated'));
    }


}