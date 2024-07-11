import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/featrues/home/data/repos/home_repo.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';
import 'package:bookly/featrues/home/presentation/view_models/similar_books_cubit/similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());

    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errMessage)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
