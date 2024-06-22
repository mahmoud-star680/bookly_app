import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookly/featrues/splach/presention/splach_screen.dart';

void main() {
  runApp(
    const BooklyApp(),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplachScreen(),
    );
  }
}
