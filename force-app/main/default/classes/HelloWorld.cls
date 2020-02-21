public class HelloWorld {
    
    public static void sayYou() {
        System.debug( 'You !!');
    }
        
    public void sayMe() {
        System.debug( 'Me !');
        Integer i = 7;
        String s = i.format();
        System.debug('s: ' + s);
    }
    
}