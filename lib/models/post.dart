import 'package:linkedin/models/comment.dart';


class Post {
  String id;
  int ownertType;
  String owner;
  String title;
  String description;
  String content;
  List<String> likes;
  List<Comment> comments;

  Post(this.id, this.ownertType, this.owner, this.title, this.content,
      this.description, this.likes, this.comments);
}
