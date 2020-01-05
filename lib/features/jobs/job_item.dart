import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:linkedin/models/job.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;

  const JobItem({
    Key key,
    this.job,
    this.height,
    this.width,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(16.0),
      child: ListTile(
        leading: Image.network(
          job.company.imageUrl,
          height: height ?? 40,
          width: width ?? 40,
        ),
        title: Text(job.title),
        subtitle: Column(
          children: <Widget>[
            Text(job.descriptions, maxLines: 5),
            SizedBox(height: 5),
            Text(
              DateFormat('yyyy-MM-dd').format(job.dateTime),
              textAlign: TextAlign.right,
            ),
            Divider(height: 5, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
