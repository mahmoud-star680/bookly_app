import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/home_app_bar.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [HomeAppBar(), FeatruedListView(), Text('Best Seller')],
      ),
    );
  }
}
