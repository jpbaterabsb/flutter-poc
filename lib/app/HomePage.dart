import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/HistoryPage.dart';
import 'package:flutter_app/app/pages/TimesheetPage.dart';
import 'package:flutter_app/app/pages/UserPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HistoryPage(), TimesheetPage(), UserPage(),
  ];
  Widget _currentWidget = HistoryPage();


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _currentWidget = _children[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentWidget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            title: new Text('History'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.timer),
            title: new Text('Timesheet'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    );
  }
}