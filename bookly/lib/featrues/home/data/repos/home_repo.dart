import 'package:dartz/dartz.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeatruedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewstBooks();
}
