public class isEducation {
    
    public static void changeowner(Map<Id,Account> datalist){
        List<Account> insertlist = new List<Account>();
        Set<ID> myid = datalist.keyset();
        for(id i : myid){
           Account newacc = [select id, name,industry, ownership from account where id=:i];
            if(newacc.Industry == 'Education'){
                newacc.Ownership = 'Public';
            }
            insertlist.add(newacc);
        }
        
        update insertlist;
       
	}

}