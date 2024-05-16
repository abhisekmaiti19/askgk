public class accountbatch implements database.batchable<sobject> {
    
    public database.querylocator start(database.batchablecontext bc){
        string qr = 'select name from account';
        return database.getquerylocator(qr);
    }
    
    public void execute(database.batchablecontext bc, List<account>ac){
        List<account> updatelist = new List<account>();
        for(account acr: ac){
            acr.name = acr.name + 'hellllo';
        }
        update updatelist;        
    }
    public void finish(database.batchablecontext bc){
        
    }

}