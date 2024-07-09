import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_rating.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_payment_button.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view_item.dart';

class BookDetailsSction extends StatelessWidget {
  const BookDetailsSction({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const FeaturedListViewItem(),
        ),
        const SizedBox(
          height: 47,
        ),
        Text(
          'The Jungle Book ',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'ruyred jhon ',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 37,
        ),
        const BookPaymentButton(),
      ],
    );
  }
}
