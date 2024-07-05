import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/featrues/home/data/repos/home_repo_impl.dart';
import 'package:bookly/featrues/home/presentation/view_models/cubit/newest_books_cubit.dart';
import 'package:bookly/featrues/home/presentation/view_models/featrued_books_cubit/featured_books_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );

  // Registering cubits
  getIt.registerFactory<NewestBooksCubit>(
    () => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
  );
  getIt.registerFactory<FeaturedBooksCubit>(
    () => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
  );
}
