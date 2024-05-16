public class countofContact{
    public static void doing(List<contact> newcontact){
        
        //for bulk update account
        List<Account> acListToUpdate = new List<account>();
        for(Contact trvs : newcontact){          
            if(trvs.AccountId != null){
                Account ac = new Account();
                ac = [select id, name,Total_Contact__c, (select id, name from contacts) from account where id =:trvs.AccountId];
                integer totalcount = ac.contacts.size();
                ac.Total_Contact__c = totalcount;
                acListToUpdate.add(ac);
            }  
        }
        
        update acListToUpdate;
    }
    
    public static void doingdelete(List<contact> newcontact){
        
        //for bulk update account
        List<Account> acListToUpdate = new List<account>();
        for(Contact trvs : newcontact){          
            if(trvs.AccountId != null){
                Account ac = new Account();
                ac = [select id, name,Total_Contact__c, (select id, name from contacts) from account where id =:trvs.AccountId];
                integer totalcount = ac.contacts.size();
                ac.Total_Contact__c = totalcount - 1;
                acListToUpdate.add(ac);
            }  
        }
        
        update acListToUpdate;
    }
    
    public static void doingupdate(List<contact>oldcon, List<contact>newcon){
        
        List<account> acclistnew = new List<account>();
        List<account> acclistold = new List<account>();
        
    
        for(Contact trvs : oldcon){          
            if(trvs.AccountId != null){
                Account ac = new Account();
                ac = [select id, name,Total_Contact__c, (select id, name from contacts) from account where id =:trvs.AccountId];
                integer totalcount = ac.contacts.size();
                ac.Total_Contact__c = totalcount;
                acclistold.add(ac);
            }  
        }
        
        update acclistold;
        
        for(Contact trvs : newcon){          
            if(trvs.AccountId != null){
                Account ac = new Account();
                ac = [select id, name,Total_Contact__c, (select id, name from contacts) from account where id =:trvs.AccountId];
                integer totalcount = ac.contacts.size();
                ac.Total_Contact__c = totalcount;
                acclistnew.add(ac);
            }  
        }
        
        update acclistnew;
        
    }
}