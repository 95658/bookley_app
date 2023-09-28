import 'package:bookley_app/features/Book_details/presentation/views/widgets/book_details_section.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/may_also_like_section.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children:  [
          const CustomBookDetailsAppBar(),
           BookDetailsSection(
             book: bookModel,
           ),
          const Expanded(
            child:  SizedBox(
              height: 50,
            ),
          ),
          const MayAlsoLikeSection(),
        ],
      ),
    );
  }
}
