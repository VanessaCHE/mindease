// services/firebase_service.dart
// services/firebase_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/Models/post.dart';


class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addPost(String userId, String content) async {
    await _firestore.collection('posts').add({
      'userId': userId,
      'content': content,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> addComment(String userId, String postId, String content) async {
    await _firestore.collection('comments').add({
      'userId': userId,
      'postId': postId,
      'content': content,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> addLike(String userId, String postId, String commentId) async {
    await _firestore.collection('likes').add({
      'userId': userId,
      'postId': postId,
      'commentId': commentId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Stream<List<Post>> getPostsStream() {
    return _firestore
        .collection('posts')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Post(
          userId: doc['userId'],
          content: doc['content'],
        );
      }).toList();
    });
  }

  Stream<List<Comment>> getCommentsStream(String postId) {
    return _firestore
        .collection('comments')
        .where('postId', isEqualTo: postId)
        .orderBy('timestamp')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Comment(
          userId: doc['userId'],
          postId: doc['postId'],
          content: doc['content'],
          timestamp: (doc['timestamp'] as Timestamp).toDate(),
        );
      }).toList();
    });
  }

  Stream<List<Like>> getLikesStream(String postId, String commentId) {
    return _firestore
        .collection('likes')
        .where('postId', isEqualTo: postId)
        .where('commentId', isEqualTo: commentId)
        .orderBy('timestamp')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Like(
          userId: doc['userId'],
          postId: doc['postId'],
          commentId: doc['commentId'],
          timestamp: (doc['timestamp'] as Timestamp).toDate(),
        );
      }).toList();
    });
  }
}

  
 

