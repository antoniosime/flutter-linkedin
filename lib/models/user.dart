import 'package:flutter/cupertino.dart';
import 'package:linkedin/models/company.dart';

class User {
  String id;
  String name;
  String surname;
  String profesion;
  String imageUrl;
  Company company;
  List<String> connections;

  User(
      {Key key,
      this.id,
      this.name,
      this.surname,
      this.profesion,
      this.company,
      this.imageUrl,
      this.connections});
}
