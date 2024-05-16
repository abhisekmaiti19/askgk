public class stockcheck {
    
    public static void doing(List<merchandise__c>mer){
        
        for(Merchandise__c m: mer){
            Merchandise__c newmer = [select id, name from merchandise__c where id=: m.id];
            if(newmer.Stock__c > 5000){
                
               throw new MyException();
                
            }
        }
        
        
        
        
    }

}