// models/post.dart
// models/post.dart
class Post {
  final String userId;
  final String content;

  Post({required this.userId, required this.content});
}

// models/comment.dart
class Comment {
  final String userId;
  final String postId;
  final String content;

  Comment({required this.userId, required this.postId, required this.content, required DateTime timestamp});
}

// models/like.dart
class Like {
  final String userId;
  final String postId;
  final String commentId;

  Like({required this.userId, required this.postId, required this.commentId, required DateTime timestamp});
}
