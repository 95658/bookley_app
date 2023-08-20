import 'package:bookley_app/core/utils/Styles/styles.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view_item.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/featured_bookds_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBookdsListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: Styles.TextStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
