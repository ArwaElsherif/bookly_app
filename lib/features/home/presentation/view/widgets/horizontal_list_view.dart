import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: SizedBox(
        height: 220.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: CustomItem(),
            );
          },
        ),
      ),
    );
  }
}
