import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/core/widgets/error_widget.dart'; // Ensure correct import path
import 'package:bookly/featrues/home/presentation/view_models/cubit/newest_books_state.dart';
import 'package:bookly/featrues/home/presentation/view_models/cubit/newest_books_cubit.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/newst_list_view_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewsetBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              final book = state.books[index];
              return NewestListViewItem(
                book: book,
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
