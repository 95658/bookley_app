import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_app_bar.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_list_view_items.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/featured_bookds_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        FeaturedBookdsListView()
      ],
    );
  }
}
