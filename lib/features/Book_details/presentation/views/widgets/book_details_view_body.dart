import 'package:bookley_app/features/Book_details/presentation/views/widgets/book_details_section.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/may_also_like_section.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children:const  [
           CustomBookDetailsAppBar(),
           BookDetailsSection(),
           Expanded(
            child:  SizedBox(
              height: 50,
            ),
          ),
           MayAlsoLikeSection(),
        ],
      ),
    );
  }
}
