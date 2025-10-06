import 'package:bookly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_item.dart';
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
        children: [
          const CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HorizontalListView(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Text('Best Seller', style: AppTextStyles.title),
                  ),
                  ...List.generate(
                    10,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: const BestSellerItem(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
