public class BtachMerchname implements Database.batchable<sobject> {
    
    public Database.querylocator start(database.batchablecontext bc){
        string qry = 'select id,name from merchandise__c';
        return database.getquerylocator(qry);  
    }
    public void execute(database.batchablecontext bc, List<merchandise__c> merch){
        for(Merchandise__C me: merch){
            me.name = 'Abhisek';
        }
        update merch;
    }
    public void finish(database.batchablecontext bc){
        
    }

}