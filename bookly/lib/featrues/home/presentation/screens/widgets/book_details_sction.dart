import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_rating.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/custom_book_image.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_payment_button.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view_item.dart';

class BookDetailsSction extends StatelessWidget {
  const BookDetailsSction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                  'no image found'),
        ),
        const SizedBox(
          height: 47,
        ),
        Text(
          bookModel.volumeInfo.title ?? 'no titile ',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating?.round() ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookPaymentButton(),
      ],
    );
  }
}
