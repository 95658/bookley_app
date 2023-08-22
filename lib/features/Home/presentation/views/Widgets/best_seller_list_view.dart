import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view_item.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/featured_bookds_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

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