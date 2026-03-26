public class StringArrayTest {
    
    public static List<String> generateStringArray( Integer amountOfStrings ) {
        List<String> testStrings = new List<String>();
        
        for( Integer i = 0; i < amountOfStrings; i++ ){
            testStrings.add( 'Test ' + i );
        }
        
        return testStrings;
    }

}