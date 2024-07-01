import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/bokk_details_app_bar.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SafeArea(child: BokkDetailsAppBar()),
        ],
      ),
    );
  }
}
