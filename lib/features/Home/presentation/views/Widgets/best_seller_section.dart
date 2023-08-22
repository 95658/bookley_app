import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/featured_bookds_list_view.dart';
import 'package:flutter/material.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      padding: const EdgeInsets.only(bottom: 50),
      physics: const BouncingScrollPhysics(),
      children: const [
        FeaturedBookdsListView(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Best Seller',
            style: Styles.TextStyle18,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        ),
      ],
    ));
  }
}
