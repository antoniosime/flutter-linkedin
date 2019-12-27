import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/models/user.dart';

class UserList extends StatelessWidget {
  final List<User> users;
  final String title;

  const UserList({Key key, this.users, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 24),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: Text(
              title,
              style: Theme.of(context).textTheme.subhead,
            ),
          ),
          Column(
            children: users
                .map((f) => ListTile(
                      leading: ClipOval(
                        child: Image.network(
                          f.imageUrl,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      title: Text("${f.name} ${f.surname}"),
                      subtitle: Text(
                        "Devloper  at ${f.company.name}",
                        style: Theme.of(context).textTheme.body1.copyWith(color: Colors.grey),
                      ),
                      trailing: Icon(
                        FontAwesomeIcons.userPlus,
                        size: 18,
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
