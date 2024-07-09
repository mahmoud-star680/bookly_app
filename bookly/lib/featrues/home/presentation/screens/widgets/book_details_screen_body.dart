import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_details_sction.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/bokk_details_app_bar.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/similiar_books_scetion.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SafeArea(child: BokkDetailsAppBar()),
                BookDetailsSction(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimiliarBooksScetion(),
                SizedBox(
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
