import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/assets.dart';

class CustomItem extends StatelessWidget {
  final double aspectRatio;
  final String? imageUrl;

  const CustomItem({
    super.key,
    required this.aspectRatio,
     this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: imageUrl?.isNotEmpty == true
            ? Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  AssetsData.testImage,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                AssetsData.testImage,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
