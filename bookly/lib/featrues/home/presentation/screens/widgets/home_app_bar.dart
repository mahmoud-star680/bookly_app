import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              )),
        ],
      ),
    );
  }
}