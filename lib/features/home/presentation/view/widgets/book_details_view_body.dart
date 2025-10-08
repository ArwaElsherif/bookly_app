import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 40,
          left: 100,
          right: 130,
        ),
        child: const CustomItem(aspectRatio: 2.6 / 4,),
      ),
      ],
      ),
    );
  }
}

