import 'package:bookley_app/features/Splash/presentation/view_model/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  runApp(const BookleyApp());
}

class BookleyApp extends StatelessWidget {
  const BookleyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home : SplashView(),
    );
  }
}
