import '../../domain/entities/post.dart';

class PostModel extends Post {
  PostModel({
    required int id,
    required String title,
    required String body,
    required List<String> tags,
    required Reactions reactions,
    required int views,
    required int userId,
  }) : super(
            id: id,
            title: title,
            body: body,
            tags: tags,
            reactions: reactions,
            views: views,
            userId: userId);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      tags: List<String>.from(json['tags']),
      reactions: Reactions.fromJson(json['reactions']),
      views: json['views'],
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'tags': tags,
      'reactions': reactions.toJson(),
      'views': views,
      'userId': userId,
    };
  }
}
