import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_details_screen_body.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsScreenBody(),
    );
  }
}
