import 'package:flutter/cupertino.dart';
import 'package:linkedin/models/company.dart';
import 'package:linkedin/models/contact.dart';
import 'package:linkedin/models/experince.dart';

import 'education.dart';

class User {
  String id;
  String name;
  String surname;
  String profesion;
  String imageUrl;
  String city;
  String country;
  Company company;
  List<String> connections;
  List<Experince> experiences;
  List<Education> educations;
  List<Contact> contacts;

  User(
      {Key key,
      this.id,
      this.name,
      this.surname,
      this.profesion,
      this.company,
      this.imageUrl,
      this.connections,
      this.experiences,
      this.city,
      this.country,
      this.educations,
      this.contacts});
}
