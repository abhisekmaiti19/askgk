@restresource(urlmapping = '/abhisek/*')
global class restexpose{
    
    @httpget
    global static List<account> getacc(){
        return [select id, name from account];
    }
}