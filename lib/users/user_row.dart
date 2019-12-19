import 'package:flutter/material.dart';

class UserShortDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text("Antonio Simeonovski"),
      subtitle: Text('Software Devloper'),
    );
  }
}
