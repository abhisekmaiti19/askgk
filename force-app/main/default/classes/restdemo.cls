@restresource(urlmapping='/hello/*')
global class restdemo { 
    @httpget
    global static list<account> getfun(){
        
        return [select id, name from account];  
    }
    @httppost
    global static ID postfun(string nm){
        Account act = new Account();
        act.name = nm;
        insert act;
        return act.id;
    }
    @httpdelete
    global static string deletefun(){
        Restrequest req = restcontext.request;
        string rcid = req.requesturi.substring(req.requesturi.lastindexof('/')+1);
        account act = [select id from account where id=:rcid];
        delete act;
        return 'deleted';
    }
}