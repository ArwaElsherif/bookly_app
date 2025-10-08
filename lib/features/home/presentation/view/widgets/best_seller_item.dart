import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/boob_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/assets.dart';
import '../../../../../core/theme/text_styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

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
          padding: EdgeInsets.only(right: 20.w),
          child: SizedBox(
            width: double.infinity,
            height: 150.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: AspectRatio(
                    aspectRatio: 2.7 / 4,
                    child: Image.asset(AssetsData.testImage, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Harry Potter and Goblet of Fire',
                        style: AppTextStyles.subtitle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                      SizedBox(height: 4.h),
                      Text('J.K. Rowling', style: AppTextStyles.body16),
                      Text('19.99\$', style: AppTextStyles.title22),
                      Spacer(),
                    BookRating(mainAxisAlignment: MainAxisAlignment.start,),
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
