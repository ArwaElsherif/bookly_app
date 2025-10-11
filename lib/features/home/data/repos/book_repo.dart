import '../models/book_model.dart';
import '../services/book_service.dart';

class BookRepository {
  final BookService bookService;
  BookRepository(this.bookService);

  Future<List<Book>> getBooks() async {
    return await bookService.fetchBooks();
  }
}
