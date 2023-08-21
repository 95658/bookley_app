import 'package:bookley_app/core/utils/Styles/styles.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view_item.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/featured_bookds_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
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
            ],
          ) ,
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );

  }
}
