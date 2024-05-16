public class BatchMerch implements Database.batchable<sobject> {
    
    public database.querylocator start(Database.batchablecontext bc){
        String query = 'select id, price__c from merchandise__c';
        return Database.getquerylocator(query);
    }
    
    public void execute (Database.batchablecontext bc, list<merchandise__c>merch){
        for(Merchandise__c a:merch){
            a.price__c = 99;
        }
        update merch;
    }
    
    public void finish(database.batchablecontext bc){
        System.debug('hello');
        
    }

}