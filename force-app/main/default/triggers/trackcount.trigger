trigger trackcount on Child__c (before insert, after insert, before update, after update, before delete, after delete , after undelete) {
        if(trigger.isafter && trigger.isinsert){    
            Trackchild.capture(trigger.new);      
        }
        if(trigger.isafter && trigger.isdelete){
            Trackchild.capture(trigger.old); 
        }
        if(trigger.isafter && trigger.isupdate){
            Trackchild.capture(trigger.new, trigger.old); 
        }
}