import 'package:flutter/material.dart';
import '../login/ui.dart';


class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String role = 'Job Seeker';
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Name')),
            SizedBox(height: 16),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 16),
            TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: role,
              items: ['Job Seeker', 'Employer']
                  .map((r) => DropdownMenuItem(value: r, child: Text(r)))
                  .toList(),
              onChanged: (val) {},
              decoration: InputDecoration(labelText: 'Role'),
            ),
            SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: Text('Register')),
          ],
        ),
      ),
    );
  }
}
