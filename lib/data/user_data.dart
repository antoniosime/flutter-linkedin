import 'package:flutter/material.dart';
import 'package:linkedin/models/user.dart';

import 'base_data_repository.dart';

class UserData with ChangeNotifier {
  // user who is login in the appp
  User user;
  // all suggested users
  List<User> users;

  BaseDataRepository _baseDataRepository;

  UserData(BaseDataRepository baseDataRepository) {
    _baseDataRepository = baseDataRepository;
    users = _baseDataRepository.getUsers();
    user = _baseDataRepository.getUsers().first;
  }

  add(User user) {
    users.add(user);
    notifyListeners();
  }

  remove(String userid) {
    users.removeWhere((f) => f.id == userid);
    notifyListeners();
  }

  addConection(String userID) {
    // add userId as connection
    user.connections.add(userID);
    // remove userid form suggested list
  }

  User getUserByID(String id) {
    return users.firstWhere((f) => f.id == id);
  }

  String getImageUrlByID(String id) {
    return users.firstWhere((f) => f.id == id).imageUrl;
  }
}
