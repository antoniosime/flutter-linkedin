import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

class LikePost extends StatelessWidget {
  final String title;
  final String text;
  final Widget post;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const LikePost(
      {Key key,
      @required this.title,
      @required this.post,
      this.text,
      this.margin,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: this.padding ?? EdgeInsets.all(0),
      margin: this.margin ?? EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          Container(
            height: 45,
            child: ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      this.title,
                      style: Theme.of(context).textTheme.subhead.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(width: 10),
                    Text(this.text)
                  ],
                ),
                trailing: Icon(Icons.arrow_drop_down)),
          ),
          Divider(color: Colors.grey),
          post
        ],
      ),
    );
  }
}
