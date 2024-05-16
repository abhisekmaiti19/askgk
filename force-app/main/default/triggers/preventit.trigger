trigger preventit on Contact (after delete , before delete, after update, before update, after insert, before insert) {

        if(trigger.isafter && trigger.isdelete){
        
            prevent.preventdelete(trigger.new);
        
        }
        
        if(trigger.isafter && trigger.isinsert){
        
                CountOfContact.doing(trigger.new);
        
        }
        
        if(trigger.isafter && trigger.isupdate)
        {
        
            Countofcontact.doingupdate(trigger.new, trigger.old);
        
        }
        
        if(trigger.isbefore && trigger.isdelete){
        
                 Countofcontact.doingdelete(trigger.old);
        
        }

}