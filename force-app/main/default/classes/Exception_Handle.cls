public class Exception_Handle {
    public static void mymeth(){
        try{
            integer a = 0;
            integer b = 10;
            
            //Math Exception
            integer res = b/a;
            system.debug(res);
            
            //Null Pointer Exception
            MyAllClass obj;
            obj.myname();
            
            //ListException handled by Exception catch itself
            List<integer> mylist = new List<integer>{1,2,3,4,5,6};
            System.debug(mylist.get(10));
                
            }catch(MathException me){
                    
                    System.debug('Math Exception handled successfully !');
                }
        catch(NullPointerException ne){
            System.debug('Null Pointer Exception Handled! ');
        }Catch(Exception e){
            System.debug('Something went wrong');
        }
    }

}