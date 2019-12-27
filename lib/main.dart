import 'package:flutter/material.dart';
import 'package:linkedin/data/company_data.dart';
import 'package:linkedin/data/post_data.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/posts/post_view.dart';
import 'package:linkedin/screens/main_screen.dart';
import 'package:linkedin/search/search_screen.dart';
import 'package:linkedin/users/user_profile.dart';
import 'package:provider/provider.dart';
import 'constances.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _setOnGenerateRoute,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<UserData>(
            create: (_) => UserData(),
          ),
          ChangeNotifierProvider<PostData>(
            create: (_) => PostData(),
          ),
          ChangeNotifierProvider<CompanyData>(
            create: (_) => CompanyData(),
          )
        ],
        child: Scaffold(
          body: MainScreen(),
        ),
      ),
    );
  }

  Route<dynamic> _setOnGenerateRoute(RouteSettings settings) {
    Widget widget;
    final Map<String, dynamic> arguments = settings.arguments;

    switch (settings.name) {
      case UserProfileScreen:
        widget = ChangeNotifierProvider(
          create: (_) => UserData(),
          child: UserProfile(userID: arguments['userID']),
        );
        break;
      case PostScreen:
        widget = MultiProvider(
          providers: [
            ChangeNotifierProvider<UserData>(
              create: (_) => UserData(),
            ),
            ChangeNotifierProvider<PostData>(
              create: (_) => PostData(),
            ),
            ChangeNotifierProvider<CompanyData>(
              create: (_) => CompanyData(),
            )
          ],
          child: PostView(postID: arguments['postID']),
        );
        break;
      case SearchScreen:
        widget = ChangeNotifierProvider(
          create: (_) => UserData(),
          child: Search(),
        );
        break;
      default:
        widget = MainScreen();
    }

    return MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    );
  }
}
