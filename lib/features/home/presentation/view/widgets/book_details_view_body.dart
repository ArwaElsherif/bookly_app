import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_hirozontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../data/models/book_model.dart';
import '../../view_model/cubits/all_books_cubits/all_books_cubit.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final book = GoRouterState.of(context).extra as Book?;
    if (book == null) {
      return const Scaffold(body: Center(child: Text('No book data')));
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailsSection(book: book),
                SizedBox(height: 10.h),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  bookRating: book.rating,
                  reviews: book.reviews,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 28.w),
                  child: BooksAction(price: book.price),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'You can also like',
                    style: AppTextStyles.title18,
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<AllBooksCubit, AllBooksState>(
            builder: (context, state) {
              if (state is AllBooksLoaded) {
                final similarBooks = List<Book>.from(state.books)..shuffle();
                similarBooks.removeWhere((b) => b.id == book.id);
                final limitedSimilarBooks = similarBooks.take(5).toList();
                return SimilarHirozontalList(books: limitedSimilarBooks);
              } else if (state is AllBooksLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return const SizedBox(
                  height: 100,
                  child: Center(child: Text('Failed to load similar books')),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
