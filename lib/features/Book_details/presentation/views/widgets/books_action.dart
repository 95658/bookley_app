import 'package:bookley_app/core/Widgets/custom_button.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key, required this.bookModel,
  });
  final BookModel bookModel ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children:  [
          const Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
              ),
                text: 'Free',
                backgroundcolor: Colors.white,
                textcolor: Colors.black),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink);
                if (await canLaunchUrl(url)){
                  await launchUrl(url);
                }
              },
              fontsize: 16,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                text: 'Free Preview',
                backgroundcolor: Color(0xffEF8262),
                textcolor: Colors.white),
          )
        ],
      ),
    );
  }
}
