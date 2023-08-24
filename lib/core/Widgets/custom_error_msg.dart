import 'package:bookley_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomErrorMsg extends StatelessWidget {
  const CustomErrorMsg({
    super.key, required this.errMsg,
  });
   final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Text(errMsg , style:  Styles.TextStyle18,);
  }
}
