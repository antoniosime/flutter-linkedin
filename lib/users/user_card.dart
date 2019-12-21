import 'package:flutter/material.dart';
import 'package:linkedin/models/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 1, left: 15, right: 15),
      decoration:
          BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey)),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: ClipOval(
                  child: Image.network(
                      user.imageUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                user.name + " " + user.surname,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "${user.profesion} at ${user.company.name}",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 8,
              ),
              Text("43 mutual \n connections",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.grey)),
              OutlineButton(
                child: new Text("CONNECT"),
                onPressed: () => print("object"),
                textColor: Colors.blue,
                borderSide: BorderSide(
                  color: Colors.blue, //Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 0.8, //width of the border
                ),
              )
            ],
          ),
          Positioned(
            top: 1,
            right: 1,
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
