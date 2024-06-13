import 'package:autoroutertut/core/failure.dart';
import 'package:autoroutertut/posts/data/models/post_upload_model.dart';
import 'package:autoroutertut/posts/domain/entities/post.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class PostsRepository {
  Future<Either<Failure, List<Post>>> fetchAllPosts();

  // To upload a post to server
  Future<Either<Failure, Post>> uploadPostToServer(PostU post);
}
