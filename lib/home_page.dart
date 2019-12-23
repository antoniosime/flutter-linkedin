import 'package:flutter/material.dart';
import 'package:linkedin/posts/company_post.dart';
import 'package:linkedin/posts/user_post.dart';
import 'package:provider/provider.dart';

import 'data/post_data.dart';
import 'models/post.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    final posts = Provider.of<PostData>(context).posts;
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          Post p = posts.elementAt(index);
          if (p.ownertType == 1) {
            return CompanyPost(
              post: p,
            );
          } else {
            return UserPost(
              post: p,
            );
          }
        },
      ),
    );
  }
}
