import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/featrues/home/presentation/screens/home_screen.dart';
import 'package:bookly/featrues/splach/presentation/widgets/sliding_text.dart';

class SplachScreenBody extends StatefulWidget {
  const SplachScreenBody({super.key});

  @override
  State<SplachScreenBody> createState() => _SplachScreenBodyState();
}

class _SplachScreenBodyState extends State<SplachScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidinAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Timer(const Duration(seconds: 2), () {
      // Navigate to HomeScreen with fade animation
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              FadeTransition(
            opacity: animation,
            child: const HomeScreen(),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidinAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}