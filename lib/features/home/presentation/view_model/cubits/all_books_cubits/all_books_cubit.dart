import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../data/models/book_model.dart';
import '../../../../data/repos/book_repo.dart';

part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  final BookRepository repository;

  AllBooksCubit(this.repository) : super(AllBooksInitial());

  Future<void> fetchAllBooks() async {
    try {
      emit(AllBooksLoading());

      final books = await repository.getBooks();

      books.sort((a, b) => a.id.compareTo(b.id));

      emit(AllBooksLoaded(books));
    } catch (e) {
      emit(AllBooksError("Failed to fetch books: $e"));
    }
  }
}
