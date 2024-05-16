public with sharing class withoutshare {

    Contact str;
    
    public withoutshare(){
    
        str = [select id, name from contact where id='003dL0000006tY5QAI'];
    
    }

    public void dosave() {
        update str;
    }


    public Contact getWithoutshare() {
        return str;
    }
   

}