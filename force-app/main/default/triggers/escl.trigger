trigger escl on Opportunity (after update, before update) {

        if(trigger.isbefore && trigger.isupdate){
            escalatetomanager.doing(trigger.new, trigger.old);
        
        }

}