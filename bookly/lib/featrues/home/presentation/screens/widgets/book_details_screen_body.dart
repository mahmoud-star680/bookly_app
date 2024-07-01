import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/bokk_details_app_bar.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view_item.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const SafeArea(child: BokkDetailsAppBar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const FeatruedListViewItem(),
          ),
        ],
      ),
    );
  }
}
