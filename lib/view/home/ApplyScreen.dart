import 'package:flutter/material.dart';

class ApplyScreen extends StatelessWidget {
  final String jobTitle;

  ApplyScreen({required this.jobTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Apply: $jobTitle')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  labelText: 'Cover Letter', border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: Text('Upload Resume (Mock)')),
            SizedBox(height: 24),
            ElevatedButton(onPressed: () {}, child: Text('Submit Application')),
          ],
        ),
      ),
    );
  }
}
