import 'package:flutter/material.dart';
import 'package:linkedin/models/job.dart';

import 'base_data_repository.dart';

class JobData with ChangeNotifier {
  List<Job> jobs;
  BaseDataRepository _baseDataRepository;

  JobData(BaseDataRepository baseDataRepository) {
    _baseDataRepository = baseDataRepository;
    jobs = _baseDataRepository.getJobs();
  }

  addJob(Job job) {
    jobs.add(job);
    _baseDataRepository.addJob(job);
    notifyListeners();
  }

  removeJob(String jobID) {
    jobs.removeWhere((c) => c.id == jobID);
    _baseDataRepository.removeJob(jobID);
    notifyListeners();
  }
}
