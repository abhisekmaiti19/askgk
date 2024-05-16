public class batch_counter implements database.batchable<sObject> {
     public integer a;
    public static database.querylocator start(database.batchablecontext bc){
        
       
        return database.getquerylocator('select id from account');
        
    }
    
    public static void execute(Database.BatchableContext bc, List<SObject> ls){
        
    }
    public static void finish(database.batchablecontext bc){
        
    }

}