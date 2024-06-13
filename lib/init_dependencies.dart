import 'package:autoroutertut/posts/data/data_sources/posts_remote_data_sources.dart';
import 'package:autoroutertut/posts/data/repository/post_repository_impl.dart';
import 'package:autoroutertut/posts/domain/repository/posts_repository.dart';
import 'package:autoroutertut/posts/domain/usecases/posts_fetch_usecase.dart';
import 'package:autoroutertut/posts/domain/usecases/posts_upload_usecase.dart';
import 'package:autoroutertut/posts/presentation/cubit/posts_cubit.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

Future<void> setup() async {
  // External
  getIt.registerLazySingleton(() => http.Client());

  // Data sources
  getIt.registerLazySingleton<PostsRemoteDataSource>(
    () => PostsRemoteDataSourceImpl(getIt()),
  );

  // Repositories
  getIt.registerLazySingleton<PostsRepository>(
    () => PostsRepositoryImpl(getIt()),
  );

  // Use cases
  getIt.registerLazySingleton(() => FetchPosts(getIt()));
  getIt.registerLazySingleton(() => PostUploadUsecase(getIt()));

  // Cubits
  getIt.registerLazySingleton(
      () => PostsCubit(fetchPosts: getIt(), postUploadUsecase: getIt()));
  Get.put(PostsCubit(fetchPosts: getIt(), postUploadUsecase: getIt()));
}
