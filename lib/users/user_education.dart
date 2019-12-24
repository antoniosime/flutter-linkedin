import 'package:flutter/material.dart';
import 'package:linkedin/models/education.dart';

class UserEducation extends StatelessWidget {
  final List<Education> educations;

  const UserEducation({Key key, this.educations}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Education",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Column(
            children: educations
                .map((f) => ListTile(
                      leading: Image.network(
                        f.imageUrl,
                        height: 40,
                        width: 40,
                      ),
                      title: Text("${f.title}"),
                      subtitle: Text("${f.title}"),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
