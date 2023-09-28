import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/may_also_like_list.dart';
import 'package:flutter/material.dart';

class MayAlsoLikeSection extends StatelessWidget {
  const MayAlsoLikeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.TextStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding:  EdgeInsets.only(bottom: 15.0),
          child:  MayAlsoLikeList(),
        ),
      ],
    );
  }
}
