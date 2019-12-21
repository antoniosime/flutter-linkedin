import 'package:flutter/material.dart';
import 'package:linkedin/posts/company_post.dart';
import 'package:linkedin/posts/like_post.dart';

import 'package:linkedin/posts/user_post.dart';

class HomePage extends StatelessWidget {
   Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index % 2 == 0) {
            return LikePost(
              title: "Antonio Simeonovski",
              text: "like this",
              post: UserPost(),
            );
          } else {
            return CompanyPost();
          }
        },
      ),
    );
  }
}


