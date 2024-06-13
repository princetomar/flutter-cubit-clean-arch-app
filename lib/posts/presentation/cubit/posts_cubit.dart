import 'package:autoroutertut/posts/data/models/post_upload_model.dart';
import 'package:autoroutertut/posts/domain/usecases/posts_upload_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/post.dart';
import '../../domain/usecases/posts_fetch_usecase.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  final FetchPosts fetchPosts;
  final PostUploadUsecase postUploadUsecase;
  PostsCubit({required this.fetchPosts, required this.postUploadUsecase})
      : super(PostsLoading());

  Future<void> getPostsFromServer() async {
    emit(PostsLoading());
    final postsData = await fetchPosts();
    emit(
      postsData.fold(
        (l) => PostsError(l.message),
        (r) => FetchPostsSuccess(r),
      ),
    );
  }

  Future<void> uploadPostToServer(PostU post) async {
    emit(PostsLoading());
    final uploadEither = await postUploadUsecase(post);
    emit(uploadEither.fold(
      (failure) => PostsError(failure.message),
      (post) => UploadPostSuccess(post),
    ));
  }
}
