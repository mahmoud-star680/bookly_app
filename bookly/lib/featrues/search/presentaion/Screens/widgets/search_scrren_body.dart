import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featrues/search/presentaion/Screens/widgets/search_field.dart';
import 'package:bookly/featrues/search/presentaion/Screens/widgets/search_result_list_view.dart';

class SearchScrrenBody extends StatelessWidget {
  const SearchScrrenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchField(),
          SizedBox(
            height: 18,
          ),
          Text(
            'search result',
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 18,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
