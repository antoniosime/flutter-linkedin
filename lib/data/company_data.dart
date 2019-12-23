import 'package:flutter/material.dart';
import 'package:linkedin/data/temp_db.dart';
import 'package:linkedin/models/company.dart';

class CompanyData with ChangeNotifier {
  List<Company> companies;
  CompanyData() {
    companies = TempDB().companies;
  }

  Company getComapnyByID(String id){

    Company company = companies.firstWhere((x)=>x.id==id);

    return company;
  }

}
