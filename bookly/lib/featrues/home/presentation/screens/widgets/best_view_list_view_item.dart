import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_rating.dart';

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
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry And The Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  )),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K. Rowlling',
                style: Styles.textStyle14,
              ),
              Row(
                children: [
                  Text(
                    '19.99',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const BookRating()
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
