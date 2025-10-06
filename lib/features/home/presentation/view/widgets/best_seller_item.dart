import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/assets.dart';
import '../../../../../core/theme/text_styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30.w),
      child: SizedBox(
        width: double.infinity,
        height: 150.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: AspectRatio(
                aspectRatio: 2.5 / 4, 
                child: Image.asset(
                  AssetsData.testImage,
                  fit: BoxFit.cover, 
                ),
              ),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harry Potter \nand Goblet of Fire',
                    style: AppTextStyles.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  SizedBox(height: 4.h),
                  Text('J.K. Rowling', style: AppTextStyles.body),
                  Row(
                    children: [
                      Text('19.99\$', style: AppTextStyles.title),
                      SizedBox(width: 18.w),
                      Icon(Icons.star, color: Colors.amber, size: 20.sp),
                      SizedBox(width: 4.w),
                      Text('4.8 ', style: AppTextStyles.title),
                      Text('(2456)', style: AppTextStyles.body),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
