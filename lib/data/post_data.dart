import 'package:flutter/material.dart';

import 'package:linkedin/models/comment.dart';
import 'package:linkedin/models/post.dart';
import 'package:uuid/uuid.dart';

import 'base_data_repository.dart';

class PostData with ChangeNotifier {
  List<Post> posts;
  BaseDataRepository _baseDataRepository;
  PostData(BaseDataRepository baseDataRepository) {
    _baseDataRepository=baseDataRepository;
    posts = _baseDataRepository.getPosts();
  }

  like(String postID, String userID) {
    posts.firstWhere((p) => p.id == postID).likes.add(userID);
    print(postID.toString() + " " + userID.toString());
    
    notifyListeners();
  }

  comment(String postID, String userID, String comment) {
    Post post = posts.firstWhere((p) => p.id == postID);
    post.comments.add(Comment(
        id: Uuid().v1(),
        postID: postID,
        userID: userID,
        comment: comment,
        time: DateTime.now()));
        notifyListeners();
  }

  remove(String postID) {
    posts.removeWhere((f) => f.id == postID);
    notifyListeners();
  }
}
