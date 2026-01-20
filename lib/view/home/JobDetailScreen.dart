import 'package:flutter/material.dart';

import 'ApplyScreen.dart';

class JobDetailScreen extends StatelessWidget {
  final String title;
  final String company;
  final String location;

  JobDetailScreen({required this.title, required this.company, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(company, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(location, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            SizedBox(height: 16),
            Text('Job Description:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('This is a sample job description for the role of $title.'),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => ApplyScreen(jobTitle: title)));
                  },
                  child: Text('Apply Now')),
            )
          ],
        ),
      ),
    );
  }
}
