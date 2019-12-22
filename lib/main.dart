import 'package:flutter/material.dart';
import 'package:linkedin/data/company_data.dart';
import 'package:linkedin/data/post_data.dart';
import 'package:linkedin/data/user_data.dart';
import 'package:linkedin/screens/main_screen.dart';
import 'package:provider/provider.dart';

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
}
