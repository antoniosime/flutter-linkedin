import 'package:flutter/material.dart';

class CompanyShortDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 40,
        child: Image.network(
          "https://www.insopra.com/wp-content/uploads/2019/10/amazon-logo.png",
          fit: BoxFit.fill,
        ),
      ),
      title: Text("Antonio Simeonovski"),
      subtitle: Text('Software Devloper'),
    );
  }
}
