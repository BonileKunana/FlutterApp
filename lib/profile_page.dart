import 'package:flutter/material.dart';
const int itemCount = 20;
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Profile Item $index'),
        leading: Icon(Icons.person),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            // Handle more options
            debugPrint('More options for item $index');
          },
        ),
      );
      });
  }
}