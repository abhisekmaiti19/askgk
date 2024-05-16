public with sharing class details {
    public void cancel() {
        
    }
       Contact cn;
    
    public details(){
    cn = [select firstname, lastname,phone,email from contact where id = '003dL00000066qjQAA'];

    }
     public Contact getDetails() {
        return cn;
    }
    public PageReference save() {
        update cn;
        return new PageReference('https://google.com/');
    }

}