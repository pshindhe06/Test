@isTest
public class MyIterableTest {
    
    @isTest
    public static void testIterableForLoop() {
        // Step 1: Create a list of strings with values 'Hello' and 'World'
        List<String> strings = new List<String>{'Hello', 'World'};
        
        // Step 2: Create an instance of MyIterable with the list of strings
        MyIterable iterable = new MyIterable(strings);
        
        // Step 3: Use a for loop to iterate over the MyIterable instance
        for (String s : iterable) {
            // Step 4: Print each string using System.debug
            System.debug(s);
        }
    }
}