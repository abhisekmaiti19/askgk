trigger accountowner on Account (after insert, before insert, after delete, before delete, after update, before update, after undelete) {

        if(trigger.isafter && trigger.isinsert){
        
                isEducation.changeowner(trigger.newmap);
        
        }

}