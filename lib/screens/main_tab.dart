import 'package:flutter/material.dart';

import 'guide.dart';

class MainTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainTabState();
  }
}

class MainTabState extends State<MainTab> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    GuideScreen(),
    GuideScreen(),
    GuideScreen(),
    GuideScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: _onTabTapped,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: new Text('가이드')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: new Text('심리상담')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: new Text('프로그램')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: new Text('MY')),
            ]));
  }
}
