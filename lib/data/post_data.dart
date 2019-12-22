import 'package:flutter/material.dart';
import 'package:linkedin/data/temp_db.dart';
import 'package:linkedin/models/comment.dart';
import 'package:linkedin/models/post.dart';

class PostData with ChangeNotifier {
  List<Post> posts;
  PostData() {
    posts = TempDB().posts;
  }

  like(int postID, int userID) {
    Post post = posts.firstWhere((p) => p.id == postID);
    post.likes.add(userID);
  }

  comment(int postID, int userID, String comment) {
    Post post = posts.firstWhere((p) => p.id == postID);
    post.comments.add(Comment(
        id: 2,
        postID: postID,
        userID: userID,
        comment: comment,
        time: DateTime.now()));
  }

  remove(int postID) {
    posts.removeWhere((f) => f.id == postID);
    notifyListeners();
  }
}
