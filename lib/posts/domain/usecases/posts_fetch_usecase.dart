// class PostsUseCase implements Usecase<Posts, NoParams> {

// }

import 'package:autoroutertut/core/failure.dart';
import 'package:autoroutertut/posts/domain/entities/post.dart';
import 'package:autoroutertut/posts/domain/repository/posts_repository.dart';
import 'package:fpdart/fpdart.dart';

class FetchPosts {
  final PostsRepository _postsRepository;
  FetchPosts(this._postsRepository);

  Future<Either<Failure, List<Post>>> call() async {
    return await _postsRepository.fetchAllPosts();
  }
}
