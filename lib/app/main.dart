import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'pages/UserPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timesheet',
      home: HomePage(),
      routes: {
        "/users": (context) => UserPage(),
      },
    );
  }
}
