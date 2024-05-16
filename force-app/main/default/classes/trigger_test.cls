@istest
public class trigger_test {
    
    @testsetup
    static void myset(){
        Account act = new Account(name='Test',Industry='Education');
        insert act;
    }
    
    @istest
    private static void dotest(){
        
        Account a = [select id, name, ownership from account where name ='Test'];
        system.assert(a.ownership.equals('Public'));
       
    }

}