@istest
private class restdemo_test {
    
    @testsetup
    static void mysetup(){
        Account act = new Account();
        act.name = 'Abhisek';
        insert act;
    }
       
    @istest
    static void myget(){
        //Account act = restdemo_factory.getacc();
        List<account> lstact = restdemo.getfun();
        system.assertequals('Abhisek', lstact[0].name,'Data Mismatch');
    }
    
    @istest static void mypost(){
        
        ID myid = restdemo.postfun('Anurag');
        List<account> actid = [select id from account where id=:myid];
        system.assertEquals(myid,actid[0].id,'Something went wrong');
        
    }
    
    @istest static void deletefun(){
        //List<account> acc = [select id from account];
        List<account> listacc = [select id from account];
        Restrequest req = new Restrequest();
        req.requesturi = '/services/apexrest/hello/'+listacc[0].id;
        restcontext.request=req;
        String res = restdemo.deletefun();
        system.assertequals('deleted',res,'Something went wrong');
    }

}