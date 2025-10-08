import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/text_styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),

          Padding(
            padding: EdgeInsets.only(
              top: 20.h,
              bottom: 40.h,
              left: 90.w,
              right: 120.w,
            ),
            child: const CustomItem(aspectRatio: 2.6 / 4),
          ),
          Text(
            'Harry Potter and Goblet of Fire',
            style: AppTextStyles.subtitle30,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Text('J.K. Rowling', style: AppTextStyles.body18),
          SizedBox(height: 6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 12.sp,
              ),
              SizedBox(width: 6.w),
              Text('4.8 ', style: AppTextStyles.title18),
              Text('(2456)', style: AppTextStyles.body16),
            ],
          ),
        ],
      ),
    );
  }
}
