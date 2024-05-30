import 'package:flutter/material.dart';
import 'package:bookly/featrues/splach/splach_screen.dart';

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
      home: SplachScreen(),
    );
  }
}
