import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  static const int itemCount = 20;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Notification Item $index'),
        leading: Icon(Icons.notifications),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            // Handle more options
            debugPrint('More options for item $index');
          },
        ),
      );
  },
);
}
}