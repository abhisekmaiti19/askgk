trigger stockcheck on Merchandise__c (before insert) {

    if(trigger.isbefore && trigger.isinsert){
    
    stockcheck.doing(trigger.new);
    
    }
}