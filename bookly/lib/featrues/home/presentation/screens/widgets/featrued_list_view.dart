import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view_item.dart';

class FeatruedListView extends StatelessWidget {
  const FeatruedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FeatruedListViewItem(),
          );
        },
      ),
    );
  }
}
