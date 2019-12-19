import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/posts/social_buttons.dart';

class CommentsAndLikes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<IconData> icons = List<IconData>();
    icons.add(FontAwesomeIcons.heart);
    icons.add(FontAwesomeIcons.thumbsUp);
    icons.add(FontAwesomeIcons.thumbsDown);
    return Container(
      margin: EdgeInsets.only(top: 0),
      padding: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            height: 38,
            child: ListTile(
              leading: SocialButtons(
                icons: icons,
              ),
              trailing: Text(
                "28 comments",
                style: TextStyle(fontSize: 12),
              ),
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
