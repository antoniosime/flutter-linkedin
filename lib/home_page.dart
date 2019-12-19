import 'package:flutter/material.dart';
import 'package:linkedin/posts/like_post.dart';

import 'package:linkedin/posts/user_post.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white30,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return LikePost(
            title: "Antonio Simeonovski",
            text: "like this",
            post: UserPost(),
          );
        },
      ),
    );
  }
}
