public class practiceexecute implements schedulable {
    
    public void execute(schedulablecontext sc){
        
        database.executebatch(new practicebatch(), 10);
        
    }

}