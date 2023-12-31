import 'package:bookley_app/core/utils/app_router.dart';
import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/book_rating.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.KBookDetailsView,
        extra: bookModel,
        );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
           CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title,
                      style:
                          Styles.TextStyle20.copyWith(fontFamily: kGTSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    bookModel.volumeInfo.authors?[0]??'',
                    style: Styles.TextStyle14,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.TextStyle20.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(
                         count: bookModel.volumeInfo.ratingsCount ?? 0,
                         rating: bookModel.volumeInfo.averageRating ?? 0,
                       ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
