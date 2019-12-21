import 'package:flutter/material.dart';
import 'package:linkedin/company/comany_short_description.dart';
import 'package:linkedin/posts/post_image_content.dart';
import 'package:linkedin/posts/post_text_descriptio.dart';

import 'base_post.dart';
import 'comments_and_likes.dart';

class CompanyPost extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const CompanyPost({Key key, this.margin, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePost(
      padding: this.padding ?? EdgeInsets.all(0),
      margin: this.margin ?? EdgeInsets.all(0),
      title: CompanyShortDescription(),
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
