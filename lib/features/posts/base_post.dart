import 'package:flutter/material.dart';

class BasePost extends StatelessWidget {
  final Widget title;
  final Widget descrtiption;
  final Widget content;
  final Widget action;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const BasePost(
      {Key key,
      this.title,
      this.descrtiption,
      this.content,
      this.action,
      this.margin,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding ?? EdgeInsets.all(0),
      margin: this.margin ?? EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          title,
          descrtiption,
          content,
          action
        ],
      ),
    );
  }
}
