import 'package:flutter/material.dart';
import 'package:bookly/featrues/search/presentaion/Screens/widgets/search_scrren_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SearchScrrenBody(),
    );
  }
}