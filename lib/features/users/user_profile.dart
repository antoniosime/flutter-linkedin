import 'package:flutter/material.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/features/users/user_contact.dart';
import 'package:linkedin/features/users/user_education.dart';
import 'package:linkedin/features/users/user_experiences.dart';
import 'package:linkedin/features/users/user_list.dart';
import 'package:linkedin/features/users/user_profile_card.dart';
import 'package:provider/provider.dart';

class UserProfile extends StatefulWidget {
  final String userID;

  const UserProfile({Key key, this.userID}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  UserData userProvider;

  @override
  void didChangeDependencies() {
    userProvider = Provider.of<UserData>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: getAppBar(),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              UserProfileCard(user: userProvider.user),
              UserExperiences(experiences: userProvider.user.experiences),
              UserEducation(educations: userProvider.user.educations),
              UserContact(contacts: userProvider.user.contacts),
              UserList(
                  users: userProvider.users.take(10).toList(),
                  title: "People also viewed")
            ],
          ),
        );
      }),
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
          decoration: InputDecoration(
            hintText: "${userProvider.user.name} ${userProvider.user.surname}",
            hintStyle: new TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ),
      actions: <Widget>[
        Container(padding: EdgeInsets.all(10), child: Icon(Icons.settings))
      ],
    );
  }
}
