import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                // Handle search logic here
                debugPrint('Searching for: $value');
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Text(
                  'Enter a keyword to search.',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}