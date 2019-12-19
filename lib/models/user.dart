import 'package:flutter/cupertino.dart';
import 'package:linkedin/models/company.dart';

class User {
  String name;
  String surname;
  String profesion;
  String imageUrl;
  Company company;

  User(
      {Key key,
      this.name,
      this.surname,
      this.profesion,
      this.company,
      this.imageUrl});
}
