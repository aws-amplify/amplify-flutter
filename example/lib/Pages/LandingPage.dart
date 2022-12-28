// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

import '../Views/SignInView.dart';
import '../Views/SignUpView.dart';
import 'MainPage.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Future<Null> _showDialogForResult(
      String text, Function onSuccess, Widget dialogWidget) async {
    bool result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(title: Text(text), children: [
            dialogWidget,
            ElevatedButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ]);
        });

    if (result) onSuccess();
  }

  // dialogWidget must return true or false
  Widget openDialogButton(
      String text, Function onSuccess, Widget dialogWidget) {
    return ElevatedButton(
        child: Text(text),
        onPressed: () {
          _showDialogForResult(text, onSuccess, dialogWidget);
        });
  }

  void onSignInSuccess() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Landing Page"),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            openDialogButton("Sign In", onSignInSuccess, SignInView()),
            openDialogButton(
                "Sign Up", () => {print("sign up success")}, SignUpView())
          ],
        )));
  }
}
