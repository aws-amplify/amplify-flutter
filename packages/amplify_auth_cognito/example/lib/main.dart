import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
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
  String signUpResult;

  @override
  void initState() {
    super.initState();
  }

    void _configureAmplify() async {
    // First add plugins (Amplify native requirements)
      AmplifyAuthCognito  auth= new AmplifyAuthCognito();
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

  void _signUp() async {
    Map<String, dynamic> userAttributes = {
      "email": "dustin.noyes@gmail.com",
      "phone_number": "+14252933357",
      "family_name": "Noyes"
    };
    try {
      CognitoSignUpResult res = await Amplify.Auth.signUp(
        CognitoSignUpRequest(
          username: "dnnoyes",
          password: "!Hodor546",
          options: CognitoSignUpOptions(
              userAttributes: userAttributes,
              providerOptions: CognitoSignUpProvider(usernameAttribute: "email")
          )
        )
      );
      setState(() {
        signUpResult = jsonEncode(res);
      });
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
                // const Padding(padding: EdgeInsets.all(10.0)),
                // RaisedButton(
                //   onPressed: _signIn,
                //   child: const Text('sign in'),
                // ),
                const Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: _signUp,
                  child: const Text('sign up'),
                ),
                const Padding(padding: EdgeInsets.all(2.0)),
                Text(
                  'SignUpData: $signUpResult',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
