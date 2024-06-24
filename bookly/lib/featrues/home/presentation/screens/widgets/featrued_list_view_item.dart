import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';

class FeatruedListViewItem extends StatelessWidget {
  const FeatruedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      width: 100,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.cyan,
              image: DecorationImage(image: AssetImage(AssetData.testImage))),
        ),
      ),
    );
  }
}
