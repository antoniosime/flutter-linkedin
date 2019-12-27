import 'package:flutter/material.dart';
import 'package:linkedin/data/post_data.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/features/comments/comment_item.dart';
import 'package:linkedin/models/post.dart';
import 'package:linkedin/models/user.dart';
import 'package:provider/provider.dart';

import 'company_post.dart';

class PostView extends StatefulWidget {
  final String postID;

  const PostView({Key key, this.postID}) : super(key: key);

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  PostData postProvider;
  UserData userProvider;
  final textControler = TextEditingController();

  @override
  void didChangeDependencies() {
    postProvider = Provider.of<PostData>(context);
    userProvider = Provider.of<UserData>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Post post = postProvider.posts.firstWhere((p) => p.id == widget.postID);
    return Scaffold(
      appBar: getAppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CompanyPost(post: post),
                showReactions(post),
                showComments(post),
                showCommentAdd(post)
              ],
            ),
          );
        },
      ),
    );
  }

  addComment(Post post) {
    if (textControler.text.isNotEmpty)
      postProvider.comment(post.id, userProvider.user.id, textControler.text);

    textControler.text = "";
  }

  Widget showCommentAdd(Post post) {
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[300])),
      child: ListTile(
        enabled: false,
        title: TextField(
          controller: textControler,
          style: new TextStyle(color: Colors.grey),
          decoration: InputDecoration.collapsed(
            hintText: "Leave your thoughts here...",
            hintStyle: new TextStyle(color: Colors.grey),
          ),
        ),
        leading: Container(
          height: 50,
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
          child: ClipOval(
            child: Image.network(userProvider.user.imageUrl),
          ),
        ),
        trailing: GestureDetector(
          onTap: addComment(post),
          child: Text(
            'POST',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget showComments(Post post) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 16, top: 10),
          child: Text(
            'Comments',
            textAlign: TextAlign.left,
          ),
        ),
        ...post.comments.map((c) => CommentItem(comment: c)).toList()
      ],
    );
  }

  Widget showReactions(Post post) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 16, top: 10),
          child: Text(
            'Reactions',
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 16, right: 16),
          alignment: Alignment.centerRight,
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: ListView.builder(
            itemCount: post.likes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              User user = userProvider.getUserByID(post.likes.elementAt(index));
              return Container(
                height: 50,
                margin: EdgeInsets.only(right: 6),
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                child: ClipOval(
                  child: Image.network(user.imageUrl),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          style: new TextStyle(color: Colors.white),
          decoration: InputDecoration.collapsed(
            hintText: "",
            hintStyle: new TextStyle(color: Colors.white),
          ),
        ),
      ),
      actions: <Widget>[
        Container(padding: EdgeInsets.all(10), child: Icon(Icons.more_vert))
      ],
    );
  }

  @override
  void dispose() {
    textControler.dispose();
    super.dispose();
  }
}
