import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/posts/social_buttons.dart';

class Post extends StatefulWidget {
  final String title;
  final Widget content;

  const Post({Key key, this.title, this.content}) : super(key: key);

  @override
  _PostState createState() => _PostState(this.title, this.content);
}

class _PostState extends State<Post> {
  final String title;
  final Widget content;

  _PostState(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = List<IconData>();
    icons.add(FontAwesomeIcons.heart);
    icons.add(FontAwesomeIcons.thumbsUp);
    icons.add(FontAwesomeIcons.thumbsDown);


    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            height: 45,
            child: ListTile(
              title: Text(this.title),
              trailing: Icon(Icons.arrow_drop_down),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text("Antonio Simeonovski"),
            subtitle: Text('Software Devloper'),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 12),
            width: MediaQuery.of(context).size.width,
            child: Text(
              'data dasnda djs a dsa dsa das djsdsadsd asd asdasds aas sad asd asd asd sa dasd sd sa das dadasdasdsad d sad sad ad ssa  assa s dsa sa s dsa dsad asdsa dsad asja d sasa',
              maxLines: 3,
            ),
          ),
          Container(
            child: Image.network(
                "https://bigoakcoaching.com/wp-content/uploads/2019/10/linkedin-logo-1940x900_34994.jpg"),
          ),
          Container(
            height: 38,
            child: ListTile(
              leading: SocialButtons(
                icons: icons,
              ),
              trailing: Text("28 comments", style: TextStyle(fontSize: 12),),
            ),
          ),
          Divider(
            endIndent: 19,
            indent: 19,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Like",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Comment",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Share",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
