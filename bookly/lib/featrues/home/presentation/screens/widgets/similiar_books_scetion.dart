import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/similar_books_list_view.dart';

class SimiliarBooksScetion extends StatelessWidget {
  const SimiliarBooksScetion({super.key});

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
        const SimilarBooksListView(),
      ],
    );
  }
}
