import 'package:flutter/material.dart';

class ProgrameScreen extends StatefulWidget {
  @override
  _ProgrameScreenState createState() => _ProgrameScreenState();
}

class _ProgrameScreenState extends State<ProgrameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('원하는 프로그램을 찾아 신청하세요 !'),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: <Widget>[
                getItemView(),
                getItemView(),
                getItemView(),
                getItemView()
              ],
            )
          ],
        ),
      ),
    );
  }

  getItemView() => Container(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Image.network("https://cdn2.iconfinder.com/data/icons/business-management-52/96/Artboard_20-512.png", width: 50.0, height: 50.0,),
        Container(
          child: Column(
            children: <Widget>[
              Text('title'),
              new CustomIconWidget(
                '홍길동',
                icon: Icons.home,
              ),
            ],
          ),
        )
      ],
    ),
  );
}

class CustomIconWidget extends StatelessWidget {
  String title;
  IconData icon;

  CustomIconWidget(this.title,
      { this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon),
        Text(title)
      ],
    );
  }
}
