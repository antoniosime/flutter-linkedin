import 'package:flutter/material.dart';
import 'package:linkedin/data/post_data.dart';
import 'package:provider/provider.dart';

import 'features/posts/company_post.dart';
import 'features/posts/user_post.dart';
import 'models/post.dart';

class MainView extends StatelessWidget {
  @override
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