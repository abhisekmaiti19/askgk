public with sharing class GetAccname {
    @AuraEnabled
    public static Account getname(String accnumber){
        
        account ac = [select name from account where AccountNumber=:accnumber][0];
        return ac; 
    }

}