import 'package:flutter/material.dart';

import 'main_tab.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 41.0, left: 66.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('너의 마음을 보여줘'),
                  Text('그림으로 보는 우리 아이의 성격'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(),
                  TextFormField(),
                  RaisedButton(
                    child: Text('로그인'),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MainTab()));
                    },
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}