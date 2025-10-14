// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import '../../../data/models/book_model.dart';

class SimilarHirozontalList extends StatelessWidget {
  const SimilarHirozontalList({super.key, required this.books});
  final List<Book> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 30, left: 30),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: books.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 6),
              child: CustomItem(
                aspectRatio: 2.7 / 4,
                imageUrl: books[index].image,
              ),
            );
          },
        ),
      ),
    );
  }
}
