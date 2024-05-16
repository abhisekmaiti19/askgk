@isTest
public class myclass_factory{
    public static Account getAccount(){
        Account act = new Account();
        act.name = 'Abhisek';
        insert act;
        
        return act;
    }
}