import 'package:bookley_app/core/utils/app_colors.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count,
  });
  final MainAxisAlignment mainAxisAlignment ;
  final num rating;
  final num count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: AppColors.KSolidStar,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
          '$rating',
          style: Styles.TextStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '$count',
            style: Styles.TextStyle14.copyWith(
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ],
    );
  }
}
