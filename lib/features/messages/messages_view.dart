import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/data/message_date.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/features/messages/message_item.dart';
import 'package:provider/provider.dart';

class MessagesView extends StatefulWidget {
  @override
  _MessagesViewState createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  MessagesData messageProvider;
  UserData userProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          searchItem(),
          Divider(),
          ...showMessagesList(),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    messageProvider = Provider.of<MessagesData>(context);
    userProvider = Provider.of<UserData>(context);
    super.didChangeDependencies();
  }

  List<Widget> showMessagesList() {
    return messageProvider
        .getUserMessages(userProvider.user.id)
        .map((m) => MessageItem(message: m))
        .toList();
  }

  Widget searchItem() {
    return ListTile(
      leading: Icon(Icons.search),
      title: Text("Search messages"),
      trailing: Icon(FontAwesomeIcons.slidersH),
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
        child: Text("Messaging"),
      ),
      actions: <Widget>[
        Container(padding: EdgeInsets.all(16), child: Icon(Icons.person_add))
      ],
    );
  }
}
