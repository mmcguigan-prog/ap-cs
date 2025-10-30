
// Book class definition
class Book {
  // Instance variables
  String title;
  String author;
  
  // Constructor
  Book(String tempTitle, String tempAuthor) {
    title = tempTitle;
    author = tempAuthor;
  }
  
  // Method to print book information
  void printInfo() {
    println(title + " was written by " + author);
  }
}
