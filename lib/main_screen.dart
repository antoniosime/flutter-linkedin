import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/main_view.dart';
import 'package:linkedin/my_network_page.dart';
import 'package:provider/provider.dart';

import 'package:linkedin/constances.dart';

import 'features/jobs/jobs_page.dart';
import 'features/notifications/notifications_page.dart';
import 'features/posts/add_post.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedTab = 0;
  PageController _pageController;
  UserData userProvider;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void didChangeDependencies() {
    userProvider = Provider.of<UserData>(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: onTabChanged,
        children: <Widget>[
          MainView(),
          MyNetworkPage(),
          AddPost(),
          NotificationsPage(),
          JobsPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTabChanged,
          currentIndex:
              selectedTab, // this will be set when a new tab is tapped
          items: getTabs()),
    );
  }

  onTabChanged(int index) {
    setState(() {
      selectedTab = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 150),
      curve: Curves.fastOutSlowIn,
    );
  }

  goToUserProfile() {
    Navigator.pushNamed(context, UserProfileScreen,
        arguments: {'userID': this.userProvider.user.id});
  }

  goToSearch() {
    print("search");
    Navigator.pushNamed(context, SearchScreen);
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: goToUserProfile,
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
          child: ClipOval(
            child: Image.network(userProvider.user.imageUrl),
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          onTap: goToSearch,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 14.0),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(FontAwesomeIcons.qrcode)),
        ),
      ),
      actions: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: Icon(FontAwesomeIcons.solidCommentAlt))
      ],
    );
  }

  List<BottomNavigationBarItem> getTabs() {
    List<BottomNavigationBarItem> list = new List<BottomNavigationBarItem>();
    list.add(BottomNavigationBarItem(
      icon: new Icon(
        Icons.home,
        size: 20,
      ),
      title: new Text('Home'),
    ));
    list.add(BottomNavigationBarItem(
      icon: new Icon(FontAwesomeIcons.userFriends, size: 20),
      title: new Text('Network'),
    ));
    list.add(BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.edit,
          size: 20,
        ),
        title: Text('Post')));
    list.add(BottomNavigationBarItem(
      icon: new Icon(FontAwesomeIcons.bell, size: 20),
      title: new Text('Notifications'),
    ));
    list.add(BottomNavigationBarItem(
      icon: new Icon(FontAwesomeIcons.briefcase, size: 20),
      title: new Text('Jobs'),
    ));

    return list;
  }
}

class HomePage {}
