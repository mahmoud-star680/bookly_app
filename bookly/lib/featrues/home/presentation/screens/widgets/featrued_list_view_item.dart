import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';

class FeatruedListViewItem extends StatelessWidget {
  const FeatruedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.cyan,
            image: DecorationImage(image: AssetImage(AssetData.testImage))),
      ),
    );
  }
}
