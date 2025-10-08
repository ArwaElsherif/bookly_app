import 'package:bookly_app/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../utils/helper/animation_helper.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> imageAnimation;

  @override
  void initState() {
    super.initState();
    final bundle = initSlidingAnimation(this);
    animationController = bundle.controller;
    slidingAnimation = bundle.slidingAnimation;
    imageAnimation = bundle.imageAnimation;
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.rightToLeftWithFade,
      //   duration: kTransitionDuration,
      // );
       if (!mounted) return;
      GoRouter.of(context).go(kHomeView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
          position: imageAnimation,
          child: Image.asset(AssetsData.logo),
        ),
        SlidingText(
          animationController: animationController,
          slidingAnimation: slidingAnimation,
        ),
      ],
    );
  }
}
