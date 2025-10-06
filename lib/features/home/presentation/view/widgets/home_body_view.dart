import 'package:bookly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/text_styles.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          HorizontalListView(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Text('Best Seller', style: AppTextStyles.title),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.w),
            child: CustomBookItem(),
          ),
        ],
      ),
    );
  }
}

