import 'package:bookly_app/features/home/presentation/view/widgets/boob_rating.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.17, vertical: 20.h),  
            child: const CustomItem(aspectRatio: 2.6 / 4),
          ),
          Text(
            'Harry Potter and Goblet of Fire',
            style: AppTextStyles.subtitle30,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Text('J.K. Rowling', style: AppTextStyles.body18.copyWith(fontStyle: FontStyle.italic)),
          SizedBox(height: 6.h),
          BookRating(mainAxisAlignment: MainAxisAlignment.center,),

        ],
      ),
    );
  }
}

