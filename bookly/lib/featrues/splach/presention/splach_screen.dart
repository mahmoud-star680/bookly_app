import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bookly/featrues/splach/presention/widgets/splach_screen_body.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplachScreenBody(),
    );
  }
}
