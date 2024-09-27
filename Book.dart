class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;  // Non-nullable, needs to be initialized

  static int totalBooks = 0;

  // Constructor with an initializer list to initialize pagesRead
  Book(this.title, this.author, this.publicationYear) : pagesRead = 0 {
    totalBooks++;   // Increment totalBooks when a new book is created
  }

  // Method to simulate reading
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter methods
  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  // Calculate the age of the book
  int getBookAge() {
    return DateTime.now().year - publicationYear;
  }
}

void main() {
  // Creating three Book objects
  Book book1 = Book("To Kill a Mockingbird", "Harper Lee", 1960);
  Book book2 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);
  Book book3 = Book("1984", "George Orwell", 1949);

  // Simulating reading pages
  book1.read(100);
  book2.read(50);
  book3.read(200);

  // Printing details of each book
  print("Book 1:");
  print("Title: ${book1.getTitle()}");
  print("Author: ${book1.getAuthor()}");
  print("Publication Year: ${book1.getPublicationYear()}");
  print("Pages Read: ${book1.getPagesRead()}");
  print("Book Age: ${book1.getBookAge()} years");
  print("");

  print("Book 2:");
  print("Title: ${book2.getTitle()}");
  print("Author: ${book2.getAuthor()}");
  print("Publication Year: ${book2.getPublicationYear()}");
  print("Pages Read: ${book2.getPagesRead()}");
  print("Book Age: ${book2.getBookAge()} years");
  print("");

  print("Book 3:");
  print("Title: ${book3.getTitle()}");
  print("Author: ${book3.getAuthor()}");
  print("Publication Year: ${book3.getPublicationYear()}");
  print("Pages Read: ${book3.getPagesRead()}");
  print("Book Age: ${book3.getBookAge()} years");
  print("");

  // Printing the total number of books created
  print("Total Books: ${Book.totalBooks}");
}
