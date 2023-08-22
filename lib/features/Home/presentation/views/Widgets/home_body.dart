import 'package:bookley_app/core/utils/app_router.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_section.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            child: CustomAppBar(
              ontap: () {
                GoRouter.of(context).push(AppRouter.KSearchView);
              },
            )),
        const BestSellerSection(),
      ],
    );
  }
}
