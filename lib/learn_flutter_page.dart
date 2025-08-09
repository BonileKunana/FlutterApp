import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        }, 
        icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(
            onPressed: () {
              // Handle info action
              debugPrint('Info button pressed');
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      // ...existing code...
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add outer padding
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/flutter1.webp'),
              const SizedBox(height: 16.0),
              const Divider(color: Colors.black),
              const SizedBox(height: 16.0),
              Container(
                color: Colors.blueGrey,
                width: double.infinity,
                height: 50.0,
                child: const Center(
                  child: Text(
                    'This is a container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _switchValue ? Colors.blue : Colors.grey,
                ),
                onPressed: () {
                  debugPrint('ElevatedButton Button');
                },
                child: const Text('Elevated Button'),
              ),
              const SizedBox(height: 8.0),
              OutlinedButton(
                onPressed: () {
                  debugPrint('OutlinedButton Button');
                },
                child: const Text('Outlined Button'),
              ),
              const SizedBox(height: 8.0),
              TextButton(
                onPressed: () {
                  debugPrint('TextButton Button');
                },
                child: const Text('TextButton Button'),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  debugPrint('GestureDetector tapped');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                      size: 20.0,
                    ),
                    Text('Fire'),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                      size: 20.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Switch(
                value: _switchValue,
                onChanged: (bool newBool) {
                  setState(() {
                    _switchValue = newBool;
                  });
                },
              ),
              Checkbox(
                value: _switchValue,
                onChanged: (bool? newValue) {
                  setState(() {
                    _switchValue = newValue ?? false;
                  });
                },
              ),
              Image.network('https://picsum.photos/200/300'),
            ],
          ),
        ),
      ),
// ...existing
    );
  }
}
