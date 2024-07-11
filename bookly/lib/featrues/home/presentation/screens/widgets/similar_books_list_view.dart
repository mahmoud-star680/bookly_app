import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/core/widgets/error_widget.dart';
import 'package:bookly/featrues/home/data/repos/home_repo_impl.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/custom_book_image.dart';
import 'package:bookly/featrues/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/featrues/home/presentation/view_models/similar_books_cubit/similar_books_state.dart';

final GetIt getIt = GetIt.instance;

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SimilarBooksCubit>(
      create: (context) {
        // Passing the category from the bookModel
        return SimilarBooksCubit(getIt<HomeRepoImpl>())
          ..fetchSimilarBooks(
              category: bookModel.volumeInfo.categories?.first ?? '');
      },
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SimilarBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  );
                },
              ),
            );
          } else if (state is SimilarBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const Center(child: Text('No books found.'));
          }
        },
      ),
    );
  }
}
