import 'package:bookly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/horizontal_list_view.dart';
import 'package:bookly_app/features/home/presentation/view_model/cubits/all_books_cubits/all_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../view_model/cubits/best_seller_cubit/best_seller_cubit.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<AllBooksCubit, AllBooksState>(
                  builder: (context, state) {
                    if (state is AllBooksLoading) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (state is AllBooksLoaded) {
                      return HorizontalListView(books: state.books);
                    } else if (state is AllBooksError) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            'Failed to load books 😢\n${state.message}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text('Best Seller', style: AppTextStyles.title22),
                ),
                BlocBuilder<BestSellerCubit, BestSellerState>(
                  builder: (context, state) {
                    if (state is BestSellerLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is BestSellerLoaded) {
                      final books = state.books;
                      return ListView.builder(
                        itemCount: books.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        itemBuilder: (context, index) {
                          final book = books[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: BestSellerItem(
                              book: book, 
                            ),
                          );
                        },
                      );
                    } else if (state is BestSellerError) {
                      return Center(child: Text(state.message));
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
