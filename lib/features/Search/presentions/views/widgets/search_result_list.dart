import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context , index ){
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0),
            child:  BestSellerListViewItem(),
          );
        }
    );
  }
}
