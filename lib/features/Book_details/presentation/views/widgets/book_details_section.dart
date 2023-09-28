import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/books_action.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/book_rating.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail?? '',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Align(
          child: Text(
            textAlign: TextAlign.center,
            book.volumeInfo.title,
            style: Styles.TextStyle18.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0]??'',
            style: Styles.TextStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
           rating: book.volumeInfo.averageRating ?? 0,
           count: book.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 25,
        ),
         BooksAction(
           bookModel: book,
         ),
      ],
    );
  }
}
