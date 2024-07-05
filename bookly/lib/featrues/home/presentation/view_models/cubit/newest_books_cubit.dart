import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly/featrues/home/presentation/view_models/cubit/newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewsetBooksState> {
  NewestBooksCubit() : super(NewsetBooksInitial());
}
