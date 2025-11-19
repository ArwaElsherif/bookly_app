import 'package:cached_network_image/cached_network_image.dart';
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
            ? CachedNetworkImage(
                imageUrl: imageUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error)
              )
            : Image.asset(
                AssetsData.testImage,
                fit: BoxFit.cover,
              ),
      ),
    );}
}
