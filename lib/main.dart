import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/profile_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPageIndex = 0;
  List<Widget> pages =  [
    HomePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Flutter App'),
        
      ),
      body: pages[currentPageIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the button
          debugPrint('Floating Action Button Pressed');
        },
        child: const Icon(Icons.add),
      ),
    bottomNavigationBar: NavigationBar(destinations: const[
      NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
      NavigationDestination(icon: Icon(Icons.notifications), label: 'Notifications'),
      
    ],
    onDestinationSelected: (int index){
      setState(() {
        currentPageIndex = index;
      });
    }, 
    selectedIndex: currentPageIndex,
    ),
    );
  }
}