import 'package:flutter/material.dart';
import 'package:linkedin/models/message.dart';

import 'base_data_repository.dart';

class MessagesData with ChangeNotifier {
  List<Message> messages;
  BaseDataRepository _baseDataRepository;

  MessagesData(BaseDataRepository baseDataRepository) {
    _baseDataRepository = baseDataRepository;
    messages = _baseDataRepository.getMessages();
  }

  List<Message> getUserMessages(String userid) => messages
      .where((m) => m.sender.id == userid || m.receiver.id == userid)
      .toList();
}
