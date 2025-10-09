import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../../home/presentation/view/widgets/best_seller_item.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController _controller = TextEditingController();
  String _searchText = '';

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _searchText = _controller.text.trim();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          /// Pass the controller to your text field
          CustomSearchTextField(controller: _controller),

          SizedBox(height: 20.h),

          /// If user typed something, show results — else show nothing
          if (_searchText.isNotEmpty)
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Search results', style: AppTextStyles.title22),
                    SizedBox(height: 16.h),
                    ...List.generate(
                      10,
                      (index) => Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: const BestSellerItem(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
