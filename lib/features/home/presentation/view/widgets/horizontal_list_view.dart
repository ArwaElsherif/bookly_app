import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/constants.dart';
import '../../../data/models/book_model.dart';

class HorizontalListView extends StatelessWidget {
  final List<Book> books;

  const HorizontalListView({super.key, required this.books});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.26,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: books.length,
          itemBuilder: (BuildContext context, int index) {
            final book = books[index];
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(kBookDetailsView, extra: book);
                },
                child: CustomItem(aspectRatio: 2.8 / 3.9, imageUrl: book.image),
              ),
            );
          },
        ),
      ),
    );
  }
}
