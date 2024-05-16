@istest
public class restdemo_factory {
    
    public static Account getacc(){
        Account act = new Account();
        act.name = 'Abhisek';
        insert act;
        return act;
        
    } 

}