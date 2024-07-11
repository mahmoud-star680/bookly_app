import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/core/di/dependency_injection.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/home_app_bar.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/newest_list_view.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/featrued_list_view.dart';
import 'package:bookly/featrues/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/featrues/home/presentation/view_models/featrued_books_cubit/featured_books_cubit.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: HomeAppBar(),
              ),
              BlocProvider(
                create: (context) =>
                    getIt<FeaturedBooksCubit>()..fetchFeatruedBooks(),
                child: const FeaturedBooksListView(),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: BlocProvider(
              create: (context) =>
                  getIt<NewestBooksCubit>()..fetchNewestBooks(),
              child: const NewestListView(),
            ),
          ),
        )
      ],
    );
  }
}
