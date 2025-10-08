import 'package:bookly_app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        onTap: (){
          GoRouter.of(context).push(kBookDetailsView);
        },
        child: Padding(
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
                      Row(
                        children: [
                          Text('19.99\$', style: AppTextStyles.title),
                          Spacer(),
                          Icon(
                            FontAwesomeIcons.solidStar,
                            color: Colors.amber,
                            size: 16.sp,
                          ),
                          SizedBox(width: 6.w),
                          Text('4.8 ', style: AppTextStyles.title),
                          Text('(2456)', style: AppTextStyles.body16),
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
