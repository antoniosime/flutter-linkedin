import 'package:flutter/material.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/models/comment.dart';
import 'package:provider/provider.dart';

class CommentItem extends StatelessWidget {
  final Comment comment;

  const CommentItem({Key key, this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserData userProvider = Provider.of<UserData>(context);
    return ListTile(
      leading: Container(
        height: 50,
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
        child: ClipOval(
          child: Image.network(userProvider.getImageUrlByID(comment.userID)),
        ),
      ),
      title: Container(
        padding: EdgeInsets.all(5),
        child: Text(
          comment.comment,
          maxLines: 5,
          style: Theme.of(context).textTheme.body1,
        ),
        decoration: new BoxDecoration(
            color: Colors.grey[200],
            borderRadius: new BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
