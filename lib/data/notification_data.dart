import 'package:flutter/material.dart';

import 'base_data_repository.dart';
import 'package:linkedin/models/notification.dart' as a;

class NotificationData with ChangeNotifier{
  BaseDataRepository _baseDataRepository;
  List<a.Notification> notifications;

  NotificationData(BaseDataRepository b){
    _baseDataRepository=b;
    notifications  =  _baseDataRepository.getNotification();
  }

}