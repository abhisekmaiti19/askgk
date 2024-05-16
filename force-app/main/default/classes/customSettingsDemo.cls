public class customSettingsDemo {
    
    public void mymeth(){
       // mysettings__c mcs = mysettings__c.getInstance('mytrigger');
       //myHirer__c mh =  myHirer__c.getInstance('005dL0000006PN7');
       mymeta__mdt md = mymeta__mdt.getInstance('trionoff');
        if(md.is_Active__c){
            system.debug('Call the trigger');
        }else{
            system.debug('dont call the trigger');
        }
        
    }

}