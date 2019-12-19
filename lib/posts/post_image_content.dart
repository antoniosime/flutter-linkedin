import 'package:flutter/material.dart';

class PostImageDescription extends StatelessWidget {
  final String url;

  PostImageDescription({Key key, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(url),
    );
  }
}
