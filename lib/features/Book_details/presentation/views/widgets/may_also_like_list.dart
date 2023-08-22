import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class MayAlsoLikeList extends StatelessWidget {
  const MayAlsoLikeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 10,),
        scrollDirection : Axis.horizontal,
        itemBuilder: (context , index){
          return const Padding(
            padding: EdgeInsets.only(top: 8.0 ),
            child: CustomBookImage(),
          );
        }, itemCount: 10,),
    );
  }
}
