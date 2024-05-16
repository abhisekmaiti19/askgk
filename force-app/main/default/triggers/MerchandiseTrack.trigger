trigger MerchandiseTrack on Merchandise__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

    if(trigger.isbefore && trigger.isdelete){
    
        //TrackMerchandise.arch(trigger.old);
        TrackMerchandise.arch(trigger.oldmap);
    
    }
    

}