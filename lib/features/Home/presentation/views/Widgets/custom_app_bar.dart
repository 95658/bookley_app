import 'package:bookley_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.ontap,
  });

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.Logo,
          height: 20,
        ),
        const Spacer(),
        InkWell(
          onTap: ontap,
          child:  const Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ],
    );
  }
}
