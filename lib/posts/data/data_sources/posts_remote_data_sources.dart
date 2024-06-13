import 'package:autoroutertut/core/failure.dart';
import 'package:autoroutertut/posts/data/models/post_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/post_upload_model.dart';

abstract interface class PostsRemoteDataSource {
  Future<List<PostModel>> fetchAllPosts();

  Future<PostModel> uploadPostToServer(PostU post);
}

class PostsRemoteDataSourceImpl implements PostsRemoteDataSource {
  // Using constructor dependency injection
  final http.Client client;
  PostsRemoteDataSourceImpl(this.client);

  @override
  Future<List<PostModel>> fetchAllPosts() async {
    try {
      final res = await client.get(Uri.parse("https://dummyjson.com/posts"));
      if (res.statusCode == 200) {
        final List<dynamic> postsJson = jsonDecode(res.body)['posts'];
        return postsJson.map((post) => PostModel.fromJson(post)).toList();
      } else {
        throw ("Error in service : ${res.body}");
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error in service : $error");
      }
      throw ("Error in service : $error");
    }
  }

  @override
  Future<PostModel> uploadPostToServer(PostU post) async {
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(post.toJson());

    final response = await client.post(
      Uri.parse("https://dummyjson.com/posts/add"),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      final output = jsonDecode(response.body);
      return PostModel.fromJson(output);
    } else {
      throw ServerException(response.body);
    }
  }
}
