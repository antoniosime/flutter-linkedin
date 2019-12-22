import 'package:linkedin/models/comment.dart';

class Post {
  int id;
  int ownertType;
  int owner;
  String title;
  String description;
  String content;
  List<int> likes;
  List<Comment> comments;

  Post(this.id, this.ownertType, this.owner, this.title, this.content,
      this.description, this.likes, this.comments);
}
