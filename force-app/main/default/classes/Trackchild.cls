public class Trackchild { 
    public static void capture(List<child__c> ch){   
        List<Parent__c> prlist = new List<Parent__c>();
        for(child__c mylist: ch ){            
            //step 1 = get mychild 
            Parent__c pr = new Parent__c();
            if(mylist.parent__c != null){
                Id currid = mylist.parent__c;
            	pr = [select id,Total_Record__c ,(select id from childs__r) from parent__c where id=:currid];
            	Integer totalcount = pr.childs__r.size();
            	pr.Total_Record__c = totalcount;
            	prlist.add(pr);
            }
        }
        update prlist;
    }
    public static void capture(List<child__c> ch, List<child__c> oldone){   
        List<Parent__c> prlist = new List<Parent__c>();
         List<Parent__c> prlist2 = new List<Parent__c>();   
        //handelling new one
        for(child__c mylist: ch ){            
            //step 1 = get mychild 
            Parent__c pr = new Parent__c();
            if(mylist.parent__c != null){
                Id currid = mylist.parent__c;
            	pr = [select id,Total_Record__c ,(select id from childs__r) from parent__c where id=:currid];
            	Integer totalcount = pr.childs__r.size();
            	pr.Total_Record__c = totalcount;
            	prlist.add(pr);
            }
        }
        //handelling old one
        for(child__c mylist: oldone ){            
            //step 1 = get mychild 
            Parent__c pr = new Parent__c();
            if(mylist.parent__c != null){
                Id currid = mylist.parent__c;
            	pr = [select id,Total_Record__c ,(select id from childs__r) from parent__c where id=:currid];
            	Integer totalcount = pr.childs__r.size();
            	pr.Total_Record__c = totalcount;
            	prlist2.add(pr);
            }
        }
        update prlist;
        update prlist2;
    }
}