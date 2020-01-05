import 'package:linkedin/models/company.dart';

class Job {
  String id;
  Company company;
  String title;
  String descriptions;
  DateTime dateTime;

  Job({
    this.id,
    this.company,
    this.dateTime,
    this.descriptions,
    this.title,
  });
}
