import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/constances.dart';
import 'package:linkedin/data/post_data.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/models/post.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';

class CommentsAndLikes extends StatefulWidget {
  final Post post;

  CommentsAndLikes({@required this.post});

  @override
  _CommentsAndLikesState createState() => _CommentsAndLikesState(post: post);
}

class _CommentsAndLikesState extends State<CommentsAndLikes> {
  Post post;

  _CommentsAndLikesState({this.post});

  goToPostScreen() {
    Navigator.pushNamed(context, PostScreen,
        arguments: {'postID': this.post.id});
  }

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = List<IconData>();
    icons.add(FontAwesomeIcons.heart);
    final user = Provider.of<UserData>(context).user;
    final postProvider = Provider.of<PostData>(context);
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
              leading: Container(
                height: 15,
                width: 50,
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${post.likes.length.toString()}",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              trailing: GestureDetector(
                onTap: goToPostScreen,
                child: Text(
                  "${post.comments.length.toString()} comments",
                  style: TextStyle(fontSize: 12),
                ),
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
              GestureDetector(
                onTap: () => postProvider.like(widget.post.id, user.id),
                child: Row(
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
