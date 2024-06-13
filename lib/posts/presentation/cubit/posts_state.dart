part of 'posts_cubit.dart';

@immutable
sealed class PostsState {}

final class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsError extends PostsState {
  final String message;

  PostsError(this.message);

  List<Object> get props => [message];
}

class FetchPostsSuccess extends PostsState {
  final List<Post> posts;
  FetchPostsSuccess(this.posts);

  List<Object> get props => [posts];
}

class UploadPostSuccess extends PostsState {
  final Post post;
  UploadPostSuccess(this.post);
}
