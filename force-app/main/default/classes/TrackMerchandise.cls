public class TrackMerchandise {
    
   // ************ this code is working with  list only *******************************
    
    //public static void arch(List<Merchandise__c> mrc){
       // Merchandise_archive__c mr ;
        /*
        //mr.name = mrc[0].name;
        for(Merchandise__c tr: mrc){
            mr.name = tr.name;
            mr.price__c = tr.price__c;
            mr.stock__c = tr.stock__c;
            mr.description__c = tr.description__c;
        }
        insert mr;  */
        
        //List<Merchandise_archive__c> malist = new List<Merchandise_archive__c>();
        //for(Merchandise__c tr: mrc){
            //mr = new Merchandise__archive__c();
            //mr.name = tr.name;
           // mr.price__c = tr.price__c;
            //mr.stock__c = tr.stock__c;
            //mr.description__c = tr.description__c;
            //malist.add(mr);
       // }
        //insert malist;
    //}
   // *****************************************
   
    
    
    //oldmap one

    public static void arch(Map<id , Merchandise__c> datamap){
        
        Merchandise_archive__c mymap;
        List<Merchandise_archive__c> datalist = new List<Merchandise_archive__c>();
        //extract keys from oldmap -> datamap
        Set<ID> idset = datamap.keyset();
        
        //travrse my set and extract data from datamap through id
        for(id myid: idset){
            //creating a new marchandise archive object in every loop to hold the data
            mymap = new Merchandise_archive__c(); 
            
            //leting each merchandise record from map through id
			Merchandise__c newdata = datamap.get(myid); 
            
            //inserting data from merchandise obj to archive
            mymap.name = newdata.name;
            mymap.Description__c = newdata.Description__c;
            mymap.Price__c = newdata.Price__c;
            mymap.Stock__c = mymap.Stock__c;
            
            //adding new archive data to data list
            datalist.add(mymap);
        }
        
        //inserting the data into object
        insert datalist;

        
    }

}