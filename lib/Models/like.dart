// models/like.dart
class Like {
  final String userId;
  final String postId;
  final String commentId;
  final DateTime timestamp;

  Like({
    required this.userId,
    required this.postId,
    required this.commentId,
    required this.timestamp,
  });

  // Additional constructors or methods if needed
}
