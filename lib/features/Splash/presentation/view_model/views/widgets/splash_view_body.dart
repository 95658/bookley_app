import 'package:bookley_app/core/utils/pics&logos/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppImages.Logo),
        const Text('Read Free Books',
        textAlign: TextAlign.center,
        ),

      ],
    );
  }
}
