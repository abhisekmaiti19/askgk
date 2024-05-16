public class invoiceschdl implements database.batchable <sobject>{
    
    public database.querylocator start(database.batchablecontext bc)
    {
        string str = 'select Closed_Date__c from invoice__c';
        return database.getquerylocator(str);
    }
    
    public void execute(database.batchablecontext bc, list<invoice__c> inv){
        
        List<invoice__c> invlist = new List<invoice__c>();
        for(invoice__c intr: inv){
            intr.Closed_Date__c = system.today();
            invlist.add(intr);
        }
        
        update invlist;
        
    }
    
    public void finish(database.batchablecontext bc){
        
    }

}