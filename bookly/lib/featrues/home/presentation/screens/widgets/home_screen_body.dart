import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/home_app_bar.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/best_seller_list_view.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view_item.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/best_view_list_view_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: HomeAppBar(),
            ),
            FeatruedListView(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Best Seller',
                style: Styles.textStyle20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
