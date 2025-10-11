import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/theme/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.mainAxisAlignment,
    required this.bookRating,
    required this.reviews,
  });
  final MainAxisAlignment mainAxisAlignment;
  final double bookRating;
  final double reviews;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 12.sp),
        SizedBox(width: 6.w),
        Text('$bookRating ', style: AppTextStyles.title18),
        Text('($reviews)', style: AppTextStyles.body16),
      ],
    );
  }
}
