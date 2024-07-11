import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/similar_books_list_view.dart';

class SimiliarBooksScetion extends StatelessWidget {
  const SimiliarBooksScetion({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like ',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        SimilarBooksListView(bookModel: bookModel),
      ],
    );
  }
}
