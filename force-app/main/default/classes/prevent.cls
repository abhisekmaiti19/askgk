public class prevent {
    public static void preventdelete(List<Contact> cn){
        
        for(Contact trvs: cn){
            if(trvs.account == null){
                trvs.adderror('Sorry You cannot delete it');
            }
        }
        
    }

}