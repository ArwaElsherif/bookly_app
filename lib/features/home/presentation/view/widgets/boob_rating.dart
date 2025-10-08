import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/theme/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, required this.mainAxisAlignment,
  });
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 12.sp,
        ),
        SizedBox(width: 6.w),
        Text('4.8 ', style: AppTextStyles.title18),
        Text('(2456)', style: AppTextStyles.body16),
      ],
    );
  }
}
