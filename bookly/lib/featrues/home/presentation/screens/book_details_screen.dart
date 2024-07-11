import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_details_screen_body.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsScreenBody(bookModel: bookModel),
    );
  }
}
