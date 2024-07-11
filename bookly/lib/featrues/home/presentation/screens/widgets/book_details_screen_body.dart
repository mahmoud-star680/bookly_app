import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_details_sction.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/bokk_details_app_bar.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/similiar_books_scetion.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const SafeArea(child: BokkDetailsAppBar()),
                const BookDetailsSction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimiliarBooksScetion(bookModel: bookModel),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
