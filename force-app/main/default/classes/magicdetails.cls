public with sharing class magicdetails {

    public void cancel() {
    
    }


    public PageReference save() {
        upsert mc;
        return new Pagereference('https://google.com/');
    }


    Merchandise__c mc;
    public magicdetails(){
    
        Id mid = apexpages.currentpage().getparameters().get('id');
        if(mid == null){
            mc = new Merchandise__c();
        }else{
                mc = [select name,stock__c,price__c, description__c from merchandise__c where id=:mid];
        }
    }
    public Merchandise__c getMagicdetails() {
        return mc;
    }

}