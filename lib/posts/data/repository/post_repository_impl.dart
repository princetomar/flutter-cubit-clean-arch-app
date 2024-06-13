import 'package:autoroutertut/core/failure.dart';
import 'package:autoroutertut/posts/data/data_sources/posts_remote_data_sources.dart';
import 'package:autoroutertut/posts/data/models/post_model.dart';
import 'package:autoroutertut/posts/domain/entities/post.dart';
import 'package:autoroutertut/posts/domain/repository/posts_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import '../models/post_upload_model.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsRemoteDataSource _postsRemoteDataSource;

  PostsRepositoryImpl(this._postsRemoteDataSource);

  @override
  Future<Either<Failure, List<Post>>> fetchAllPosts() async {
    try {
      final posts = await _postsRemoteDataSource.fetchAllPosts();
      if (kDebugMode) {
        print("POSTS FETCHED : $posts");
      }
      return right(posts);
    } on ServerException catch (error) {
      return left(Failure(error.message));
    }
  }

  @override
  Future<Either<Failure, Post>> uploadPostToServer(PostU post) async {
    try {
      final uploadedPost =
          await _postsRemoteDataSource.uploadPostToServer(post);
      return Right(uploadedPost);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
