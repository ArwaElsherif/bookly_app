import 'package:bookly_app/features/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class SimilarHirozontalList extends StatelessWidget {
  const SimilarHirozontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.22,
        child: Padding(
          padding: EdgeInsets.only(top: 10,bottom: 30, left: 30),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 6),
                child: CustomItem(aspectRatio: 2.7/ 4,),
              );
            },
          ),
        ),
      );
  }
}

