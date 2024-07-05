import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly/featrues/home/data/repos/home_repo.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatruedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeatruedBooks();

    result.fold((Failure) {
      emit(FeaturedBooksFailure(Failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
