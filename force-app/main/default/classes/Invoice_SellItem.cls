public class Invoice_SellItem {
    
    public static void allin(){
        //List<Sell_Item__c> allsell = [select id, name, Invoice__r.name from sell_item__c];
        List<Invoice__c> allin = [select id, name, (select id, name from sell_items__r) from Invoice__c];
        for(Invoice__c se: allin){
            System.debug(se.name+' '+se.id+' '+se.sell_items__r);
        }
    }

}