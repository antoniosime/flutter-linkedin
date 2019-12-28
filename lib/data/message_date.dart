import 'package:flutter/material.dart';
import 'package:linkedin/data/temp_db.dart';
import 'package:linkedin/models/message.dart';

class MessagesData with ChangeNotifier {
  List<Message> messages;

  MessagesData() {
    messages = TempDB().messages;
  }

  List<Message> getUserMessages(String userid) => messages
      .where((m) => m.sender.id == userid || m.receiver.id == userid)
      .toList();
}
