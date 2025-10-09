import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController? controller;
const CustomSearchTextField({super.key, this.controller});


  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,

      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.white, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.white, width: 1.w),
        ),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: null,
          icon: Opacity(
            opacity: 0.8,
            child: Icon(FontAwesomeIcons.magnifyingGlass, size: 24.sp),
          ),
        ),
      ),
    );
  }
}