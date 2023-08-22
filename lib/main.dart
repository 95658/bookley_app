import 'package:bookley_app/core/utils/app_colors.dart';
import 'package:bookley_app/core/utils/app_router.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




void main() {
  runApp(const BookleyApp());
}

class BookleyApp extends StatelessWidget {
  const BookleyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false ,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColors.KcolorBackground,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

    );
  }
}

