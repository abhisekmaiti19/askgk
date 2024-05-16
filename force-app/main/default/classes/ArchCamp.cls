public class ArchCamp {
    
    public static void doing(List<Campaign> cmp){
        List<CampaignArchice__c> arch = new List<CampaignArchice__c>();
        for(Campaign trvs : cmp){
            CampaignArchice__c newarc = new  CampaignArchice__c();
            newarc.name = trvs.name;
            arch.add(newarc);
        }
        
        insert arch;
        
        
        
    }

}