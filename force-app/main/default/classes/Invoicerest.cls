@restresource(urlmapping='/assignment/*')
global class Invoicerest { 
   
    @httpdelete
    global static string deleteinvoice(){
        Restrequest req = restcontext.request;
        string rcid = req.requesturi.substring(req.requesturi.lastindexof('/')+1);
        invoice__c inv = [select id from invoice__c where id=:rcid];
        delete inv;
        return 'deleted';
    }
    
}



 
    /*@httpget
    global static List<invoice__c> getinvoice(){
        return [select id, name from invoice__c];
    }*/
    /*@httppost
    global static id postinvoice(string descr){
        Invoice__c inv = new Invoice__c();
        inv.description__c = descr;
        insert inv;
        return inv.id;
    }*/

 /*@httppost 
    global static string postinvoice(List<string> inv){
        List<invoice__c> invlist = new List<invoice__c>();
        integer i = 0;
        for(string invtr: inv){
            invoice__c newinv = new invoice__c();
            newinv.description__c = invtr;
            invlist.add(newinv);  
        }
        insert invlist;
        return 'created';
    }*/