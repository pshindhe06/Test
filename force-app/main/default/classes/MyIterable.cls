public class MyIterable implements Iterable<String> {
    
    // Class variable to hold the list of strings
    private List<String> strings;
    
    // Constructor to initialize the class variable 'strings'
    public MyIterable(List<String> strings) {
        this.strings = strings;
    }

    // Implement the iterator method to return an iterator for the 'strings' list
    public Iterator<String> iterator() {
        return strings.iterator();
    }
}