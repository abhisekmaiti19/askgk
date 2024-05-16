public class RemoveDuplicate {
    
    public void appOne(){
        List<Integer> mlist = new List<Integer>{1,2,3,4,4,7,8,1};
        List<Integer> slist = new List<Integer>();
        slist.addAll(mlist);
        
        for(integer i = 0; i<mlist.size()-1; i++){
            integer hold = mlist.get(i);
            for(integer J = i+1; j<mlist.size(); j++){
                if(hold == mlist.get(j)){
                    mlist.remove(j);
                    j--;
                }
            }
        }
        System.debug('For approach one - > '+ mlist);
		
    }
    
    public void apptwo(){
        List<Integer> mlist = new List<Integer>{1,2,3,4,4,7,8,1};
         Set<Integer> myset = new Set<Integer>(mlist);
        system.debug('For second approach '+myset);
    }
    
    public void appthree(){
        List<Integer> mlist = new List<Integer>{1,2,3,4,4,7,8,1};
         Set<Integer> myset = new Set<Integer>();
         myset.addAll(mlist);
         system.debug('For third approach '+myset);
    }
    
    public void appfour(){
        List<Integer> mlist = new List<Integer>{1,2,3,4,4,7,8,1};
         Set<Integer> myset = new Set<Integer>();
        for(Integer it: mlist){
            myset.add(it);
        }
         system.debug('For Fourth approach '+myset);
    }

}