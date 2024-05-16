public class restconsuming {
    @future(callout=true)
    public static void consume(){
        http ht = new http();
        httprequest req = new httprequest();
        req.setendpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setmethod('POST');
        req.setheader('content-type', 'application/json; charset=utf-8');
        req.setbody('{"name":"tiger"}');
        httpresponse res = ht.send(req);
        if(res.getstatuscode() == 201){
            
            system.debug(res.getbody());
        }
        else{
            system.debug('error');
        }
    }

}