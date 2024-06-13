import 'package:autoroutertut/core/failure.dart';
import 'package:autoroutertut/posts/domain/entities/post.dart';
import 'package:autoroutertut/posts/domain/repository/posts_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../data/models/post_upload_model.dart';

class PostUploadUsecase {
  final PostsRepository _postsRepository;

  PostUploadUsecase(this._postsRepository);

  Future<Either<Failure, Post>> call(PostU post) async {
    return _postsRepository.uploadPostToServer(post);
  }
}
