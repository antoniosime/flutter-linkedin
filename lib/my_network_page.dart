import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/users/user_card.dart';
import 'package:provider/provider.dart';

class MyNetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserData>(context);
    return Container(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("Manage my network"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("No pending invitations"),
              trailing: Text(
                "MANAGE ALL",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(10),
                childAspectRatio: 1 / 1.6,
                children: userProvider.users
                    .map((f) => UserCard(
                          user: f,
                          remove: userProvider.remove,
                          addConnection: userProvider.addConection,
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
