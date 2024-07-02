import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/best_view_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestViewListViewItem(),
          );
        });
    ;
  }
}
