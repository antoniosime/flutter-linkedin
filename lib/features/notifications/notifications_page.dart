import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/data/notification_data.dart';
import 'package:provider/provider.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NotificationData notificationProvider =
        Provider.of<NotificationData>(context);
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: ListView.builder(
        itemCount: notificationProvider.notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.bell),
              title: Text(
                  notificationProvider.notifications.elementAt(index).text),
              subtitle: Divider(),
            ),
          );
        },
      ),
    );
  }
}
