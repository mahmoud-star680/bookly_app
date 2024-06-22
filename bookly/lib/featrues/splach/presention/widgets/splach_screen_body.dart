import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';

class SplachScreenBody extends StatelessWidget {
  const SplachScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetData.logo)],
    );
  }
}
