import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/app_routter.dart';
// Ensure correct import

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsScreen);
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Placeholder color
                  image: const DecorationImage(
                    image: AssetImage(
                        AssetData.testImage), // Replace with actual image asset
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsScreen);
                    },
                    splashColor: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
