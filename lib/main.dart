import 'package:bookley_app/core/utils/AppColors/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/Splash/presentation/views/splash_view.dart';



void main() {
  runApp(const BookleyApp());
}

class BookleyApp extends StatelessWidget {
  const BookleyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false ,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColors.KcolorBackground),
      home : const SplashView(),
    );
  }
}
