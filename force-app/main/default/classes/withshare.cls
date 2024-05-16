public with sharing class withshare {

    public void dosave() {
        update at;
    }


    Account at;
    public withshare(){
            at = [select name from account where id='001dL000000RzSQQA0'];
    }
    public Account getWithshare() {
        return at;
    }

}