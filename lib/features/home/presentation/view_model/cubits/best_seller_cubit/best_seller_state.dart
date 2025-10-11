part of 'best_seller_cubit.dart';

sealed class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerLoading extends BestSellerState {}

final class BestSellerLoaded extends BestSellerState {
  final List<Book> books;

  const BestSellerLoaded(this.books);

  @override
  List<Object> get props => [books];
}

final class BestSellerError extends BestSellerState {
  final String message;

  const BestSellerError(this.message);

  @override
  List<Object> get props => [message];
}
