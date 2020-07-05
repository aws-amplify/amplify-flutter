import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:amplify_auth/amplify_auth.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAmplifyConfigured = false;
  Amplify amplify = new Amplify();

  @override
  void initState() {
    super.initState();
  }

    void _configureAmplify() async {
    // First add plugins (Amplify native requirements)
      AmplifyAuth auth = new AmplifyAuth();
      amplify.addPlugin([auth]);

    // print(amplifyInstance.addPlugin(apiPlugin, storagePlugin));

    // Now configure
    bool isConfigured = await amplify.configure(amplifyconfig);

    if (!isConfigured) {
      print("Failed to configure amplify");
      setState(() {
        _isAmplifyConfigured = false;
      });
      return;
    }

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  void _signIn() async {
      try {
        await Amplify.Auth.signIn(SignInRequest(username: "dnnoyes", password: "!Hodor546"));
      } catch (e) {
        print(e);
      }
  }

  void _signUp() async {
    Map<String, dynamic> userAttributes = {
      "email": "dustin.noyes@gmail.com",
      "phone_number": "+14252933357",
      "gender": "male",
    };
    try {
      await Amplify.Auth.signUp(
        SignUpRequest(
          username: "dnnoyes",
          password: "!Hodor546",
          options: SignUpOptions(
            userAttributes: userAttributes 
          )
        )
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: _configureAmplify,
                  child: const Text('configure'),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: _signIn,
                  child: const Text('sign in'),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: _signUp,
                  child: const Text('sign up'),
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}
