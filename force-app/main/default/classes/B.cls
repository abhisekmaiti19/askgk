public class B  implements Queueable {
    
    public void execute(QueueableContext qc){
        system.debug('I am from class B');
    }

}