import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/app_routter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchScreen);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              )),
        ],
      ),
    );
  }
}
