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
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  bool _isAmplifyConfigured = false;
  Amplify amplify = new Amplify();
  String authState;
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
      authState = "SIGN_UP";
    });
  }

  void _signUp() async {
    Map<String, dynamic> userAttributes = {
      "email": emailController.text,
      "phone_number": phoneController.text,
    };
    try {
      CognitoSignUpResult res = await Amplify.Auth.signUp(
        request: CognitoSignUpRequest(
          username: usernameController.text,
          password: passwordController.text,
          options: CognitoSignUpOptions(
              userAttributes: userAttributes
          )
        ), 
        success: (res) => setState(() {
          authState = res.signUpState;
        }),
        error: (res) => print("callback error: " + res.toString())
      );
      setState(() {
        signUpResult = res.toString();
      });
    } catch (e) {
      print(e);
    }
  }

  void _confirmSignUp() async {
    try {
      CognitoSignUpResult res = await Amplify.Auth.confirmSignUp(
        request: CognitoConfirmSignUpRequest(
          username: usernameController.text,
          confirmationCode: confirmationCodeController.text,
        ), 
        success: (res) => setState(() {
          authState = "CONFIRMED";
        }),
        error: (res) => print("callback error: " + res.toString())
      );
      setState(() {
        signUpResult = res.toString();
      });
    } catch (e) {
      print(e);
    }
  }

  Widget showConfirmSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'The code we sent you',
                  labelText: 'Confirmation Code *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _confirmSignUp,
                child: const Text('Confirm SignUp'),
              ),
              // const Padding(padding: EdgeInsets.all(2.0)),
              // Text(
              //   'SignUpData: $signUpResult',
              //   textAlign: TextAlign.center,
              //   overflow: TextOverflow.visible,
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // )
            ],
          ),
        ),
      ],
    );
  }

  Widget showSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'The name you will use to login',
                  labelText: 'Username *',
                ),
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'The password you will use to login',
                  labelText: 'Password *',
                ),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Your email address',
                  labelText: 'Email *',
                ),
              ),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Your phone number',
                  labelText: 'Phone number *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _signUp,
                child: const Text('Sign Up'),
              ),
              const Padding(padding: EdgeInsets.all(2.0)),
              Text(
                'SignUpData: $signUpResult',
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
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
                  onPressed: _isAmplifyConfigured ? null: _configureAmplify,
                  child: const Text('configure'),
                ),

                const Padding(padding: EdgeInsets.all(10.0)),
                if (this.authState == "SIGN_UP") showSignUp(),
                if (this.authState == "CONFIRM_SIGN_UP_STEP") showConfirmSignUp(),
              ]
            )
          ],
        ),
      ),
    );
  }
}
