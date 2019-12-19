import 'package:flutter/material.dart';
import 'package:linkedin/posts/base_post.dart';
import 'package:linkedin/posts/comments_and_likes.dart';
import 'package:linkedin/posts/post_image_content.dart';
import 'package:linkedin/posts/post_text_descriptio.dart';
import 'package:linkedin/users/user_row.dart';

class UserPost extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const UserPost({Key key, this.margin, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePost(
      padding: this.padding ?? EdgeInsets.all(0),
      margin: this.margin ?? EdgeInsets.all(0),
      title: UserShortDescription(),
      descrtiption: PostTextDescription(
        description:
            'sdnsajkndjasjdkjsandja sasnd nasjknsadkj nkjas ndksadksank dnkasj ndnas ;d nasjnkjnsakd nsajkdn kjasndkjnasj dnj',
      ),
      content: PostImageDescription(
        url:
            "https://bigoakcoaching.com/wp-content/uploads/2019/10/linkedin-logo-1940x900_34994.jpg",
      ),
      action: CommentsAndLikes(),
    );
  }
}
