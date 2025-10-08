import 'package:bookly_app/features/home/presentation/view/widgets/boob_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/text_styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.17,
                    vertical: 10.h,
                  ),
                  child: const CustomItem(aspectRatio: 2.6 / 4),
                ),
                Text(
                  'Harry Potter and Goblet of Fire',
                  style: AppTextStyles.subtitle26,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'J.K. Rowling',
                  style: AppTextStyles.body18.copyWith(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 10.h),
                BookRating(mainAxisAlignment: MainAxisAlignment.center),
                Padding(
                  padding:  EdgeInsets.symmetric(
                    vertical: 28.w,
                  ),
                  child: const BooksAction(),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('You can also like', style: AppTextStyles.title18),
                ),
               ],
            ),
          ),
          SizedBox(
              height: 150.h,
              child: Padding(
                padding:  EdgeInsets.only(top: 10.h,bottom: 30.h, left: 30.w),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 6.w),
                      child: CustomItem(aspectRatio: 2.6/ 4,),
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
