public class MapPrg {
    
    public void mymeth(){
        Map<Integer, String> mymp = new Map<Integer, String>();
        mymp.put(1,'Abhisek');
        mymp.put(2,'Anurag');
        mymp.put(3,'Rituja');
        mymp.put(4,'Bandana');
        
        for(Integer it : mymp.keySet()){
            System.debug(mymp.get(it));
        }
        for(String it : mymp.values()){
            System.debug(it);
        }
    }

}