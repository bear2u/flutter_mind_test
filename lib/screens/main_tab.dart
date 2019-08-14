import 'package:flutter/material.dart';

import 'guide.dart';
import 'programs.dart';

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
    ProgrameScreen(),
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
                  icon: Image.network("https://img.icons8.com/material/4ac144/256/camera.png"), title: new Text('가이드')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: new Text('심리상담')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: new Text('프로그램')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: new Text('MY')),
            ]));
  }
}
