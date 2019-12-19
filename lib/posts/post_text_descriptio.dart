import 'package:flutter/material.dart';

class PostTextDescription extends StatelessWidget {
  final String description;

  final double width;
  final TextStyle textStyle;
  final int maxLines;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const PostTextDescription(
      {Key key,
      this.description,
      this.margin,
      this.padding,
      this.width,
      this.textStyle,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(left: 20, right: 20, bottom: 12),
      padding: padding ?? EdgeInsets.all(0),
      width: width ?? MediaQuery.of(context).size.width,
      child: Text(
        description,
        style: textStyle ?? Theme.of(context).textTheme.body1,
        maxLines: maxLines ?? 3,
      ),
    );
  }
}
