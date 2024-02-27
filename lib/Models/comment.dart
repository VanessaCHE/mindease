// models/comment.dart
class Comment {
  final String userId;
  final String postId;
  final String content;
  final DateTime timestamp;

  Comment({
    required this.userId,
    required this.postId,
    required this.content,
    required this.timestamp,
  });

  // Additional constructors or methods if needed
}
