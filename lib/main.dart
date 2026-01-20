import 'package:flutter/material.dart';
import 'package:malapath/view/Splach/ui.dart';


void main() {
  runApp(JobMalaApp());
}

class JobMalaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Mala',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
