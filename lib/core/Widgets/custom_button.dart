import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
        required this.text,
        required this.backgroundcolor,
        this.borderRadius,
        required this.textcolor,
        this.fontsize,  this.onPressed,

      })
      : super(key: key);

  final String text;
  final double? fontsize;
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          child: Text(text ,
          style: Styles.TextStyle18.copyWith(
            color: textcolor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize,
          ),
          )),
    );
  }
}
