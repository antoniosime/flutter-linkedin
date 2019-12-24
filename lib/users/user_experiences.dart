import 'package:flutter/material.dart';
import 'package:linkedin/models/experince.dart';

class UserExperiences extends StatelessWidget {
  final List<Experince> experiences;
  final double height;
  final double width;

  const UserExperiences({Key key, this.experiences, this.height, this.width})
      : super(key: key);

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
              "Experience",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Column(
            children: experiences
                .map((f) => ListTile(
                      leading: Image.network(
                        f.company.imageUrl,
                        height: height ?? 40,
                        width: width ?? 40,
                      ),
                      title: Text("${f.title}"),
                      subtitle: Text("${f.company.name}"),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
