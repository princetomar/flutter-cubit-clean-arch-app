// post_model.dart

class PostU {
  final String title;
  final int userId;
  final String body; // Assuming userId is required for each post

  PostU({required this.title, required this.userId, required this.body});

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'userId': userId,
      'body': body,
      // Add other fields here as needed
    };
  }
}
