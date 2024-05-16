public class BatchApex implements Database.Batchable<sObject> {
    
    public database.querylocator start(Database.batchablecontext bc){
        String query = 'select id, name from account';
        return Database.getquerylocator(query);
    }
    
    public void execute (Database.batchablecontext bc, list<account>act){
        for(Account a:act){
            a.name = a.name+'update!!';
        }
        update act;
    }
    
    public void finish(database.batchablecontext bc){
        System.debug('hello');
        
    }

}


// database.executebatch(obj)