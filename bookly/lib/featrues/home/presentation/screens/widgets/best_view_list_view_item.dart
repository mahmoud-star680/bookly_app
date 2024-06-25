import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';

class BestViewListViewItem extends StatelessWidget {
  const BestViewListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 120,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyan,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetData.testImage))),
            ),
          ),
        )
      ],
    );
  }
}
