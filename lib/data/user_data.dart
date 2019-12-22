import 'package:flutter/material.dart';
import 'package:linkedin/data/temp_db.dart';
import 'package:linkedin/models/user.dart';

class UserData with ChangeNotifier {
  // user who is login in the appp
  User user;
  // all suggested users
  List<User> users;
  UserData() {
    users = TempDB().users;
    user = TempDB().users.first;
  }

  add(User user) {
    users.add(user);
    notifyListeners();
  }

  remove(int userid) {
    users.removeWhere((f) => f.id == userid);
    notifyListeners();
  }

  addConection(int userID) {
    // add userId as connection
    user.connections.add(userID);
    // remove userid form suggested list
    remove(userID);
  }
}
