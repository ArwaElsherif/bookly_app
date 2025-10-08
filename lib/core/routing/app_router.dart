import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {

 static final router = GoRouter(
  routes: [
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    )
  ],
);

}