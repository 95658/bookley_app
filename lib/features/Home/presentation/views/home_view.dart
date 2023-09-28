import 'package:bookley_app/core/Widgets/no_app_bar.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: NoAppBar(),
        body : HomeBody(),
    );
  }
}
