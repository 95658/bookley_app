import 'package:bookley_app/features/Search/presentions/views/widgets/custom_search_text_filed.dart';
import 'package:bookley_app/features/Search/presentions/views/widgets/search_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomSearchTextFiled(),
        SearchViewSection(),
      ],
    );
  }
}
