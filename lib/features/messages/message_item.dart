import 'package:flutter/material.dart';
import 'package:linkedin/models/message.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(message.sender.imageUrl,
            width: 50, height: 50, fit: BoxFit.fill),
      ),
      title: Text("${message.sender.name} ${message.sender.surname}"),
      subtitle: Text(message.message),
    );
  }
}
