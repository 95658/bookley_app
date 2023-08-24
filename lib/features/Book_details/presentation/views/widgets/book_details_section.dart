import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/books_action.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/book_rating.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const  CustomBookImage(
            imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/iphone-14-plus-09-1665072732.jpg?crop=0.585xw:0.781xh;0.162xw,0.118xh&resize=1200:*',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Jungle Book',
          style: Styles.TextStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.TextStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 25,
        ),
        const BooksAction(),
      ],
    );
  }
}
