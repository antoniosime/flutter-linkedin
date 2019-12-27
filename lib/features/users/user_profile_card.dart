import 'package:flutter/material.dart';
import 'package:linkedin/models/user.dart';

class UserProfileCard extends StatelessWidget {
  final User user;

  const UserProfileCard({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.lightBlue,
              ),
              Container(
                margin: EdgeInsets.only(top: 32, left: 16),
                width: 130.0,
                height: 130.0,
                decoration: new BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: new DecorationImage(
                    image: new NetworkImage(user.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(70.0)),
                  border: new Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
              ),
              Positioned(
                child: Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                right: 10,
                top: 110,
              ),
              SizedBox(height: 25)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${user.name} ${user.surname}",
                  style: Theme.of(context).textTheme.title.copyWith(
                      fontWeight: FontWeight.normal, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Text(
                  "${user.profesion} at ${user.company.name}",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                 SizedBox(height: 10),
                Text(
                  "${user.educations.first.title}",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Text("${user.country}  ",
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                            fontWeight: FontWeight.normal, fontSize: 17)),
                    Text("${user.connections.length} connections",
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color: Colors.blue))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
