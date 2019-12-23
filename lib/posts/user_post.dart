import 'package:flutter/material.dart';
import 'package:linkedin/models/post.dart';
import 'package:linkedin/posts/base_post.dart';
import 'package:linkedin/posts/comments_and_likes.dart';
import 'package:linkedin/posts/post_image_content.dart';
import 'package:linkedin/posts/post_text_descriptio.dart';
import 'package:linkedin/users/user_row.dart';

class UserPost extends StatelessWidget {
  final Post post;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const UserPost({Key key, this.margin, this.padding, this.post})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePost(
      padding: this.padding ?? EdgeInsets.all(0),
      margin: this.margin ?? EdgeInsets.all(0),
      title: UserShortDescription(),
      descrtiption: PostTextDescription(
        description: post.description,
      ),
      content: PostImageDescription(
        url: post.content,
      ),
      action: CommentsAndLikes(
        post: post,
       
      ),
    );
  }
}
