import 'package:bookley_app/core/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children:const  [
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
              ),
                text: '19.99€',
                backgroundcolor: Colors.white,
                textcolor: Colors.black),
          ),
          Expanded(
            child: CustomButton(
              fontsize: 16,
                borderRadius: BorderRadius.only(
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
