import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/home_app_bar.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view_item.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/best_view_list_view_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppBar(),
          FeatruedListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller'),
          SizedBox(
            height: 20,
          ),
          BestViewListViewItem()
        ],
      ),
    );
  }
}
