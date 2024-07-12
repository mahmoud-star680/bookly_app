import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/core/utils/app_routter.dart';

class BokkDetailsAppBar extends StatelessWidget {
  const BokkDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_checkout_outlined),
        )
      ],
    );
  }
}
