import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../data/models/book_model.dart';

class BooksDetailsSection extends StatelessWidget {
  final Book book;
  const BooksDetailsSection({super.key, required this.book});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.17,
            vertical: 10.h,
          ),
          child: CustomItem(aspectRatio: 2.6 / 4, imageUrl: book.image),
        ),
        Text(
          book.title,
          style: AppTextStyles.subtitle26,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        Text(
          book.author,
          style: AppTextStyles.body18.copyWith(fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
