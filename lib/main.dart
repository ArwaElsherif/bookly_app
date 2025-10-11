import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/core/routing/app_router.dart';
import 'package:bookly_app/features/home/data/services/book_service.dart';
import 'package:bookly_app/features/home/presentation/view_model/cubits/all_books_cubits/all_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/cubits/best_seller_cubit/best_seller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/data/repos/book_repo.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create:
                (context) =>
                    AllBooksCubit(BookRepository(BookService()))
                      ..fetchAllBooks(),
          ),
          BlocProvider(
            create:
                (context) =>
                    BestSellerCubit(BookRepository(BookService()))
                      ..fetchBestSellers(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
