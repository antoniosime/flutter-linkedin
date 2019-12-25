import 'package:flutter/material.dart';
import 'package:linkedin/models/contact.dart';

class UserContact extends StatelessWidget {
  final List<Contact> contacts;

  const UserContact({Key key, this.contacts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Contact",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Column(
            children: contacts
                .map((f) => ListTile(
                      leading: Icon(f.iconData, color: Colors.blue,),
                      title: Text("${f.title}"),
                      subtitle: Text("${f.content}", style: TextStyle(color: Colors.blue),),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
