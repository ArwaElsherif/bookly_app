import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../core/constants/constants.dart';
import '../../features/home/presentation/view/home_view.dart';

void navigateToHome() {
  Future.delayed(const Duration(seconds: 3), () {
    Get.to(
      () => const HomeView(),
      transition: Transition.rightToLeftWithFade,
      duration: kTransitionDuration,
    );
  });
}
