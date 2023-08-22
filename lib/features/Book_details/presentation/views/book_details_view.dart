import 'package:bookley_app/core/Widgets/no_app_bar.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NoAppBar(),
      body: BookDetailsViewBody(),
    );
  }
}
