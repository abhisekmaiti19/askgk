public with Sharing class getContact {
    @AuraEnabled
    public static String[] getName(String email ){
        
        string mylastname =  [select lastname,firstname from contact where email=:email][0].lastname;
        string myname =  [select lastname,name from contact where email=:email][0].name;
        
        String[] myarr = new String[]{mylastname,myname};
        return myarr;
        
    }

}