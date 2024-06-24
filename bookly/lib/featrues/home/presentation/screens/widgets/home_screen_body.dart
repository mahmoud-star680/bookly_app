import 'package:flutter/material.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/home_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeAppBar(),
      ],
    );
  }
}
