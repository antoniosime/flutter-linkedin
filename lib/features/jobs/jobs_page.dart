import 'package:flutter/material.dart';
import 'package:linkedin/data/job_data.dart';
import 'package:linkedin/features/jobs/job_item.dart';
import 'package:linkedin/models/job.dart';
import 'package:provider/provider.dart';

class JobsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    JobData jobProvider = Provider.of<JobData>(context);
    return ListView.builder(
      itemCount: jobProvider.jobs.length,
      itemBuilder: (BuildContext context, int index) {
        Job job = jobProvider.jobs.elementAt(index);
        return JobItem(job: job);
      },
    );
  }
}
