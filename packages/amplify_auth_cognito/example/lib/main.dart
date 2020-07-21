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
  String signInResult;

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
      authState = "SIGN_IN";
    });
  }

  void _signUp() async {
    Map<String, dynamic> userAttributes = {
      "email": emailController.text,
      "phone_number": phoneController.text,
      "given_name": "Noyes",
      "address": "123 My Street"
    };
    try {
      SignUpResult res = await Amplify.Auth.signUp(
        request: SignUpRequest(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
          provider: CognitoSignUpRequestProvider(usernameAttribute: "email"),
          options: SignUpOptions(
              userAttributes: userAttributes,
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
      SignUpResult res = await Amplify.Auth.confirmSignUp(
        request: ConfirmSignUpRequest(
          userKey: usernameController.text.trim(),
          confirmationCode: confirmationCodeController.text.trim(),
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

  void _signIn() async {
    try {
      SignInResult res = await Amplify.Auth.signIn(
        request: SignInRequest(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
        ), 
        success: (res) => setState(() {
          print("signedIn: " + res.toString());
          authState = "SIGNED_IN";
        }),
        error: (res) => print("callback error: " + res.toString())
      );
      setState(() {
        signInResult = res.toString();
        
      });
    } catch (e) {
      print(e);
    }
  }

  void _createUser() async {
    setState(() {
      authState = "SIGN_UP";
    });
  }

  void _confirmUser() async {
    setState(() {
      authState = "CONFIRM_SIGN_UP_STEP";
    });
  }

  void _backToSignIn() async {
    setState(() {
      authState = "SIGN_IN";
    });
  }

  Widget showConfirmSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Your username',
                  labelText: 'Username *',
                )
              ),
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
                onPressed: _confirmSignUp,
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
                onPressed: _signIn,
                child: const Text('SignIn'),
              ),

            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _createUser,
              child: const Text('Create User'),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _confirmUser,
              child: const Text('Confirm User'),
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
                'SignUpData: $signUpResult',
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
      'Auth Status: $authState',
      textAlign: TextAlign.center,
      overflow: TextOverflow.visible,
      style: TextStyle(fontWeight: FontWeight.bold),
            
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
                if (this.authState == "CONFIRMED" || this.authState == "SIGN_IN") showSignIn(),
                if (this.authState == 'SIGNED_IN') showApp(),
              ]
            )
          ],
        ),
      ),
    );
  }
}
