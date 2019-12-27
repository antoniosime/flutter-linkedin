import 'package:flutter/material.dart';

class SocialButtons extends StatefulWidget {
  final List<IconData> icons;

  const SocialButtons({Key key, this.icons}) : super(key: key);

  @override
  _SocialButtonsState createState() => _SocialButtonsState(this.icons);
}

class _SocialButtonsState extends State<SocialButtons> {
  final List<IconData> icons;

  _SocialButtonsState(this.icons);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: icons
            .map((f) => Icon(
                  f,
                  size: 12,
                ))
            .toList(),
      ),
    );
  }
}
