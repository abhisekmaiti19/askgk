public class assignmentjob {
    
    public static void mymeth(){
        List<contact> ctlist = [SELECT ID, lastNAME FROM contact];
        system.debug(ctlist);
    }

}