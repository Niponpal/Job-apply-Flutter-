import 'package:flutter/material.dart';
import 'JobDetailScreen.dart';
class JobsScreen extends StatelessWidget {
  final jobs = [
    {'title': 'Flutter Developer', 'company': 'ABC Tech', 'location': 'Dhaka'},
    {'title': 'Backend Developer', 'company': 'XYZ Corp', 'location': 'Chittagong'},
    {'title': 'UI/UX Designer', 'company': 'Design Hub', 'location': 'Sylhet'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Job Mala')),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(job['title']!),
              subtitle: Text('${job['company']} - ${job['location']}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => JobDetailScreen(
                            title: job['title']!,
                            company: job['company']!,
                            location: job['location']!)));
              },
            ),
          );
        },
      ),
    );
  }
}
