import 'package:linkedin/models/user.dart';

class Message {
  String id;
  String message;
  User sender;
  User receiver;
  DateTime time;

  Message({
    this.id,
    this.message,
    this.sender,
    this.receiver,
    this.time,
  });
}
