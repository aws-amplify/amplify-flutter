import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
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
  String displayState;
  String authState;
  String error;
  List<String> exceptions = [];

  @override
  void initState() {
    super.initState();
  }

  void _configureAmplify() async {
    AmplifyAuthCognito  auth = new AmplifyAuthCognito();
    amplify.addPlugin(authPlugin: [auth]);
    await amplify.configure(amplifyconfig);
    setState(() {
      _isAmplifyConfigured = true;
      displayState = "SHOW_SIGN_IN";
    });
  }

  void _signUp() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    Map<String, dynamic> userAttributes = {
      "email": emailController.text,
      "phone_number": phoneController.text,
      "address": "123 MyStreet"
    };
    try {
      SignUpResult res = await Amplify.Auth.signUp(
        request: SignUpRequest(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
          options: CognitoSignUpOptions(
            userAttributes: userAttributes,
            usernameAttribute: "email"
          )
        ), 
      );
      setState(() {
        displayState = res.nextStep.signUpStep == "DONE" ? "SHOW_CONFIRM" : "SHOW_SIGN_UP";
        authState = "Signup: " + res.nextStep.signUpStep;
      });
    } on AuthError catch (e) {
      setState(() {
        error = e.cause;
        e.exceptionList.forEach((el) {
          exceptions.add(el.exception);
        });
      });
      print(e);
    }
  }

  void _createUser() async {
    setState(() {
      displayState = "SHOW_SIGN_UP";
    });
  }

  void _backToSignIn() async {
    setState(() {
      displayState = "SHOW_SIGN_IN";
    });
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
                  icon: Icon(Icons.confirmation_number),
                  hintText: 'The code we sent you',
                  labelText: 'Confirmation Code *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: null,
                child: const Text('Confirm SignUp'),
              ),
            ],
          ),
        ),
      ],
    );
  }

Widget showSignIn() {
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
                  hintText: 'Your username',
                  labelText: 'Username *',
                )
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Your password',
                  labelText: 'Password *',
                )
              ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _createUser,
              child: const Text('Create User'),
            ),
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
                obscureText: true,
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
                'SignUpData: $authState',
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed:_backToSignIn,
              child: const Text('Back to Sign In'),
            ),
            ],
          ),
        ),
      ],
    );
  }

  Widget showApp() {
    return Text(
      "You are signed in!"
    );
  }

  showAuthState() {
    return Text(
      'Auth Status: $authState',
      textAlign: TextAlign.center,
      overflow: TextOverflow.visible,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget getTextWidgets(List<String> strings)
  {
    if (strings != null) {
      return new Row(children: strings.map((item) => new Text(item + " ")).toList());
    }
  }

  showErrors() {
    return Text(
        'Error: $error',
        textAlign: TextAlign.center,
        overflow: TextOverflow.visible,
        style: TextStyle(fontWeight: FontWeight.bold)
    );
  }

  showExceptions() {
    return getTextWidgets(exceptions);
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
                if (this.displayState == "SHOW_SIGN_UP") showSignUp(),
                if (this.displayState == "SHOW_CONFIRM") showConfirmSignUp(),
                if (this.displayState == "SHOW_SIGN_IN") showSignIn(),
                if (this.displayState == 'SIGNED_IN') showApp(),
                showAuthState(),
                if (this.error != null) showErrors(),
                showExceptions()
              ]
            )
          ],
        ),
      ),
    );
  }
}
