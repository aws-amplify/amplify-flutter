import 'package:flutter/material.dart';

import 'MainPage.dart';
import 'SignIn.dart';
import 'SignUp.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Future<Null> _showDialogForResult(String text, Function onSuccess, Widget dialogWidget) async {
    bool result = await showDialog(
        context: context,
        child: new SimpleDialog(title: Text(text), children: [
          dialogWidget,
          RaisedButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
        ]));

    if(result)
      onSuccess();
  }
  // dialogWidget must return true or false
  Widget openDialogButton(String text, Function onSuccess, Widget dialogWidget) {
    return RaisedButton(
        child: Text(text),
        onPressed: () {
          _showDialogForResult(text, onSuccess, dialogWidget);
        });
  }

  void onSignInSuccess(){

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
            (route) => false);
    /*
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => MainPage()),);
     */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              openDialogButton("Sign In", onSignInSuccess, SignIn()),
              openDialogButton("Sign Up", onSignInSuccess, SignUp())
            ],
          )),
    );
  }
}
