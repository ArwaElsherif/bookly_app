import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../data/models/book_model.dart';
import '../../../../data/repos/book_repo.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  final BookRepository repository;

  BestSellerCubit(this.repository) : super(BestSellerInitial());

  Future<void> fetchBestSellers() async {
    emit(BestSellerLoading());

    try {
      // fetch all books أول مرة
      final allBooks = await repository.getBooks();

      // فلترة الكتب حسب rating >= 4.6
      final bestSellers = allBooks
          .where((book) => book.rating >= 4.6)
          .toList()
        ..sort((a, b) => b.rating.compareTo(a.rating)); // sort descending

      emit(BestSellerLoaded(bestSellers));
    } catch (e) {
      emit(BestSellerError("Failed to fetch best sellers: $e"));
    }
  }
}
