public class escalatetomanager {
    
    public static void doing(List<opportunity>op, List<Opportunity> opold){
        integer i = 0;
        for(opportunity myop : op){
            if(opold[0].StageName == 'closed won' && myop.StageName == 'closed lost' ){
                myop.NextStep = 'escalate to manager';
            }
            i++;
        }       
    }

}