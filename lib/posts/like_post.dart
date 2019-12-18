import 'package:flutter/material.dart';
import 'package:linkedin/posts/base_post.dart';
import 'package:meta/meta.dart';

class LikePost extends StatelessWidget {
  final String title;
  final String text;
  final BasePost post;

  const LikePost(
      {Key key, @required this.title, @required this.post, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 45,
          child: ListTile(
            title: Row(
              children: <Widget>[
                Text(this.title),
                SizedBox(width: 10),
                Text(this.text)
              ],
            ),
            trailing: Icon(Icons.arrow_drop_down)
          ),
        ),
        Divider(
          color: Colors.grey
        ),
        post
      ],
    );
  }
}
