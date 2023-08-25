import 'package:bookley_app/core/utils/app_colors.dart';
import 'package:bookley_app/core/utils/app_router.dart';
import 'package:bookley_app/core/utils/service_locator.dart';
import 'package:bookley_app/features/Home/data/model/repose/home_repo_impl.dart';
import 'package:bookley_app/features/Home/presentation/views/management/AlsoLike/also_like_cubit.dart';
import 'package:bookley_app/features/Home/presentation/views/management/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:bookley_app/features/Home/presentation/views/management/NewestBooks/newest_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';




void main() {
  setupservicelocator();
  runApp(const BookleyApp());
}

class BookleyApp extends StatelessWidget {
  const BookleyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),),
        BlocProvider(create: (context)=> NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false ,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColors.KcolorBackground,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),

      ),
    );
  }
}

