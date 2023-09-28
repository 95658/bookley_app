import 'package:bookley_app/core/utils/styles.dart';
import 'package:bookley_app/features/Search/presentions/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';

class SearchViewSection extends StatelessWidget {
  const SearchViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 50),
          physics: const BouncingScrollPhysics(),
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Search Result',
                style: Styles.TextStyle18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SearchResultList(),
            ),
          ],
        ));
  }
}
