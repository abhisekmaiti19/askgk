public class invoicedo implements schedulable {
    
    public void execute(schedulablecontext sc){
        database.executebatch(new invoiceschdl());
    }

}