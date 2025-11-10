//2
ArrayList<Book> books = new ArrayList<Book>();

void setup(){
//3 
books.add(new Book("A", 10));
books.add(new Book("B", 15));
books.add(new Book("C", 11));
//for (Book b: books){
//  println(b.title);
//}

//4 
books.remove(0);
//for (Book b: books){
//  println(b.title);
//}

//5
books.add(1, new Book("D", 12));
//for (Book b: books){
//  println(b.title);
//}

//6
books.set(2, new Book("E", 9));
//for (Book b: books){
//  println(b.title);
//}

//7
for (int i=0; i<books.size();i++){
  books.get(i).qty += 1;
}
//for (Book b: books){
//  println(b.qty);
//}

}
