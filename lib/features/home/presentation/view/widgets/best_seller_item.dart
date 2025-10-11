import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../data/models/book_model.dart';

class BestSellerItem extends StatelessWidget {
  final Book book;

  const BestSellerItem({super.key, required this.book});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          GoRouter.of(context).push(kBookDetailsView);
        },
        child: Padding(
          padding: EdgeInsets.only(right: 20),
          child: SizedBox(
            //width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: AspectRatio(
                    aspectRatio: 2.7 / 4,
                    child: Image.network(
                      book.image,
                      width: 80,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        book.title,
                        style: AppTextStyles.subtitle22,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                      SizedBox(height: 4),
                      Text(book.author, style: AppTextStyles.body16),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Text('${book.price}\$', style: AppTextStyles.title22),
                          Spacer(),
                          BookRating(
                            mainAxisAlignment: MainAxisAlignment.start,
                            bookRating: book.rating,
                            reviews: book.reviews,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
