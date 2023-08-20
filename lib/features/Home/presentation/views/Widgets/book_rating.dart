import 'package:bookley_app/core/utils/AppColors/app_colors.dart';
import 'package:bookley_app/core/utils/Styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: AppColors.KSolidStar,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.TextStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '2390',
          style: Styles.TextStyle14.copyWith(
            color: AppColors.KratingText
          ),
        ),
      ],
    );
  }
}
