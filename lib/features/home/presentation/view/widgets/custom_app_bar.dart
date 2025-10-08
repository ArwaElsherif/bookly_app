import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/assets.dart';
import '../../../../../core/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 20.h),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(kSearchView);
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 24.sp),
          ),
        ],
      ),
    );
  }
}
