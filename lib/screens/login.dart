import 'package:flutter/material.dart';

import 'main_tab.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _idController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

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
                  TextFormField(
                    controller: _idController,
                  ),
                  TextFormField(
                    controller: _pwdController,
                  ),
                  RaisedButton(
                    child: Text('로그인'),
                    onPressed: () {
                      loginProc(context);
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

  loginProc(BuildContext context) async {
    try {
      final user = (await _auth.signInWithEmailAndPassword(
        email: _idController.text,
        password: _pwdController.text,
      )).user;

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MainTab()));

    } catch (e) {
//      final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
//
//// Find the Scaffold in the widget tree and use it to show a SnackBar.
//      Scaffold.of(context).showSnackBar(snackBar);
      print('login error');
    }
//
//    if(user != null) {
//
//    } else {
//
//    }

  }

}
