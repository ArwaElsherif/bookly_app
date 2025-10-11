part of 'all_books_cubit.dart';

sealed class AllBooksState extends Equatable {
  const AllBooksState();

  @override
  List<Object> get props => [];
}

final class AllBooksInitial extends AllBooksState {}

final class AllBooksLoading extends AllBooksState {}

final class AllBooksLoaded extends AllBooksState {
  final List<Book> books;

  const AllBooksLoaded(this.books);

  @override
  List<Object> get props => [books];
}

final class AllBooksError extends AllBooksState {
  final String message;

  const AllBooksError(this.message);

  @override
  List<Object> get props => [message];
}
