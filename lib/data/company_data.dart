import 'package:flutter/material.dart';

import 'package:linkedin/models/company.dart';

import 'base_data_repository.dart';

class CompanyData with ChangeNotifier {
  List<Company> companies;
  BaseDataRepository _baseDataRepository;
  CompanyData(BaseDataRepository baseDataRepository) {
    _baseDataRepository = baseDataRepository;
    companies = _baseDataRepository.getCompanies();
  }

  Company getComapnyByID(String id) {
    Company company = companies.firstWhere((x) => x.id == id);

    return company;
  }
}
