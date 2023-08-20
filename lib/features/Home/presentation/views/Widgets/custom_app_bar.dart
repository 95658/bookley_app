import 'package:bookley_app/core/utils/pics&logos/app_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60 , bottom: 35 , ),
      child: Row(
        children: [
          Image.asset(
            AppImages.Logo,
            height: 20,
          ),
         const Spacer(),
          const Icon(FontAwesomeIcons.magnifyingGlass),
        ],
      ),
    );
  }
}
