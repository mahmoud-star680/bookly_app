import 'package:bloc/bloc.dart';
import 'package:bookly/featrues/home/data/repos/home_repo.dart';
import 'package:bookly/featrues/home/presentation/view_models/cubit/newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewsetBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold((Failure) {
      emit(NewsetBooksFailure(Failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
