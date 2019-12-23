import 'package:flutter/material.dart';
import 'package:linkedin/company/comany_short_description.dart';

import 'package:linkedin/models/post.dart';
import 'package:linkedin/posts/post_image_content.dart';
import 'package:linkedin/posts/post_text_descriptio.dart';


import 'base_post.dart';
import 'comments_and_likes.dart';

class CompanyPost extends StatelessWidget {
  final Post post;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const CompanyPost({Key key, this.post, this.margin, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BasePost(
      padding: this.padding ?? EdgeInsets.all(0),
      margin: this.margin ?? EdgeInsets.all(0),
      title: CompanyShortDescription(
        companyID: post.owner,
      ),
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
