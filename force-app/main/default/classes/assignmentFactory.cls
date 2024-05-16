@istest
public class assignmentFactory {
    
    public static List<contact> allcontact(){
        List<contact> cntlist = new List<contact>();        
       
            for(integer i = 0; i<19999; i++){
                Contact act = new Contact(lastname='cont '+i);
                cntlist.add(act);
        		}
        return cntlist;    
    }
}