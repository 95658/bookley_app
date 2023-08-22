import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/featured_bookds_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_images.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Row(
            children: [
              Image.asset(
                AppAssets.Logo,
                height: 20,
              ),
              const Spacer(),
              InkWell(child: const Icon(FontAwesomeIcons.magnifyingGlass),onTap: (){},),
            ],
          ),
        ),
        Expanded(child: ListView(
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
        )),
      ],
    );
  }
}
