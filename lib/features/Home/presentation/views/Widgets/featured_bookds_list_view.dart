import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedBookdsListView extends StatelessWidget {
  const FeaturedBookdsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection : Axis.horizontal,
          itemBuilder: (context , index){
        return const Padding(
          padding: EdgeInsets.only(top: 8.0 ),
          child: CustomBookImage(),
        );
      }),
    );
  }
}
