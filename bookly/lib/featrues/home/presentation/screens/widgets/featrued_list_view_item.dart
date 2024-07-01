import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/app_routter.dart';

class FeatruedListViewItem extends StatelessWidget {
  const FeatruedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsScreen);
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.cyan,
              image: const DecorationImage(
                  image: AssetImage(AssetData.testImage))),
        ),
      ),
    );
  }
}
