public class Overriding_difftypes {
    
    public  void aboutme(String name){
        
        System.debug('Hello my name is '+name);
        
    }
    
    public void aboutme(String name, Integer psid ){
        
        system.debug('Hello my full details is => psid '+psid+' fullname => '+name);
        
    }

}