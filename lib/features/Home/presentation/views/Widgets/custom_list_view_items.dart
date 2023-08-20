import 'package:bookley_app/core/utils/pics&logos/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AppImages.TestImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
