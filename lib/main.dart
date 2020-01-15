import 'package:flutter/material.dart';
import 'package:linkedin/data/company_data.dart';
import 'package:linkedin/data/fake_data_reposiroty.dart';
import 'package:linkedin/data/job_data.dart';
import 'package:linkedin/data/message_date.dart';
import 'package:linkedin/data/notification_data.dart';
import 'package:linkedin/data/post_data.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/features/messages/messages_view.dart';
import 'package:provider/provider.dart';
import 'constances.dart';
import 'features/posts/post_view.dart';
import 'features/search/search_screen.dart';
import 'features/users/user_profile.dart';
import 'main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _setOnGenerateRoute,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<UserData>(
            create: (_) => UserData(new FakeDataRrepository()),
          ),
          ChangeNotifierProvider<PostData>(
            create: (_) => PostData(new FakeDataRrepository()),
          ),
          ChangeNotifierProvider<CompanyData>(
            create: (_) => CompanyData(new FakeDataRrepository()),
          ),
          ChangeNotifierProvider<JobData>(
            create: (_) => JobData(new FakeDataRrepository()),
          ),
           ChangeNotifierProvider<NotificationData>(
            create: (_) => NotificationData(new FakeDataRrepository()),
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
          create: (_) => UserData(new FakeDataRrepository()),
          child: UserProfile(userID: arguments['userID']),
        );
        break;
      case PostScreen:
        widget = MultiProvider(
          providers: [
            ChangeNotifierProvider<UserData>(
              create: (_) => UserData(new FakeDataRrepository()),
            ),
            ChangeNotifierProvider<PostData>(
              create: (_) => PostData(new FakeDataRrepository()),
            ),
            ChangeNotifierProvider<CompanyData>(
              create: (_) => CompanyData(new FakeDataRrepository()),
            )
          ],
          child: PostView(postID: arguments['postID']),
        );
        break;
      case SearchScreen:
        widget = ChangeNotifierProvider(
          create: (_) => UserData(new FakeDataRrepository()),
          child: Search(),
        );
        break;
      case MessagesScreen:
        widget = MultiProvider(
          providers: [
            ChangeNotifierProvider<UserData>(
              create: (_) => UserData(new FakeDataRrepository()),
            ),
            ChangeNotifierProvider<MessagesData>(
              create: (_) => MessagesData(new FakeDataRrepository()),
            ),
          ],
          child: MessagesView(),
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
