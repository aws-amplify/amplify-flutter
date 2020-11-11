/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'Widgets/ConfirmResetWidget.dart';
import 'Widgets/ConfirmSignInWidget.dart';
import 'Widgets/ConfirmSignUpWidget.dart';
import 'Widgets/SignInWidget.dart';
import 'Widgets/SignUpWidget.dart';
import 'Widgets/UpdatePasswordWidget.dart';
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
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  bool _isAmplifyConfigured = false;
  Amplify amplify = Amplify();
  AmplifyAuthCognito auth;
  String displayState;
  String authState = "User not signed in";
  String hubEvent = "";
  String error = "";
  List<String> exceptions = [];

  @override
  void initState() {
    super.initState();
  }

  void showResult(_authState) async {
    setState(() {
      error = "";
      exceptions = [];
      authState = _authState;
    });
    print(this.authState);
  }

  void changeDisplay(_displayState) async {
    setState(() {
      error = "";
      exceptions = [];
      displayState = _displayState;
    });
    print(this.displayState);
  }

  void setError(AuthError e) async {
    setState(() {
      exceptions = [];
    });
    setState(() {
      error = e.cause;
      e.exceptionList.forEach((el) {
        exceptions.add(el.exception);
      });
    });
    print(e);
  }

  void _configureAmplify() async {

    auth = AmplifyAuthCognito();
    amplify.addPlugin(authPlugins: [auth]);
    var isSignedIn = false;

    await amplify.configure(amplifyconfig);
    try {
      isSignedIn = await _isSignedIn();
    } on AuthError catch(e) {
      print("User is not signed in.");
    }

    setState(() {
      _isAmplifyConfigured = true;
      displayState = isSignedIn ? "SIGNED_IN" : "SHOW_SIGN_IN";
      authState = isSignedIn ? "User already signed in" : "User not signed in";
    });
    auth.events.listenToAuth((hubEvent) {
      switch(hubEvent["eventName"]) {
        case "SIGNED_IN": {
          setState(() {
            hubEvent = "SIGNED_IN";
          });
          print("HUB: USER IS SIGNED IN");
        }
        break;
        case "SIGNED_OUT": {
          setState(() {
            hubEvent = "SIGNED_OUT";
          });
          print("HUB: USER IS SIGNED OUT");
        }
        break;
        case "SESSION_EXPIRED": {
          setState(() {
            hubEvent = "SESSION_EXPIRED";
          });
          print("HUB: USER SESSION HAS EXPIRED");
        }
        break;
        default: {
          print("CONFIGURATION EVENT");
        }
      }
    });
  }

  Future<bool> _isSignedIn() async {
    final session = await Amplify.Auth.fetchAuthSession();
    return session.isSignedIn;
  }

  void _signOut() async {
    try {
      await Amplify.Auth.signOut(
        options: CognitoSignOutOptions(
          globalSignOut: true
        )
      );
      showResult("Signed Out");
      changeDisplay('SHOW_SIGN_IN');
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
  
  void _fetchSession() async {
    try {
      CognitoAuthSession res = await Amplify.Auth.fetchAuthSession(options: CognitoSessionOptions(getAWSCredentials: true));
      showResult("Session Sign In Status = " + res.isSignedIn.toString());
    } on AuthError catch (e) {
      setError(e);
      print(e);
    }
  }

  void _getCurrentUser() async {
    try {
      AuthUser res = await Amplify.Auth.getCurrentUser();
      showResult("Current User Name = " + res.username);
    } on AuthError catch (e) {
      setError(e);
    }
  }

  void _stopListening() async {
    auth.events.stopListeningToAuth();
  }

  void _showCreateUser() async {
    changeDisplay("SHOW_SIGN_UP");
  }

  void _showUpdatePassword() async {
    changeDisplay("SHOW_UPDATE_PASSWORD");
  }

  void _backToSignIn() async {
    changeDisplay("SHOW_SIGN_IN");
  }

  void _backToApp() async {
    changeDisplay("SIGNED_IN");
  }

  Widget showApp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              Text("You are signed in!"),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _signOut,
                child: const Text('Sign Out'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _showUpdatePassword,
                child: const Text('Change Password'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _stopListening,
                child: const Text('Stop Listening'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _fetchSession,
                child: const Text('Get Session'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _getCurrentUser,
                child: const Text('Get CurrentUser')
              )
            ],
          ),
        ),
      ],
    );
  }

  showAuthState() {
    return Row(
      children: [
        Text('Current auth state: '),
        Text('$authState', key: Key('auth-state-text'))
      ],
    );
  }

  showHubEvent() {
    return Row(
      children: [
        Text('Recent Hub Event: '),
        Text('$hubEvent')
      ],
    );
  }

  showErrors() {
    return Center(
      child: Card(
        key: Key('error-card'),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text("Current Errors"),
              subtitle: Text(this.error, key: Key('current-error')),
            ),
            SizedBox(
              height: 200,
              child: new ListView.builder(
                itemCount: this.exceptions.length,
                itemBuilder: (BuildContext ctxt, int index) {
                return new Text(exceptions[index], key: Key('exception-'+ (index+1).toString()));
                }
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SizedBox(
          height: 600,
          child: ListView(
            padding: EdgeInsets.all(10.0),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  showAuthState(),
                  showHubEvent(),
                  if (this.displayState == "SHOW_SIGN_UP") SignUpWidget(showResult, changeDisplay, setError, _backToSignIn),
                  if (this.displayState == "SHOW_CONFIRM") ConfirmSignUpWidget(showResult, changeDisplay, setError, _backToSignIn),
                  if (this.displayState == "SHOW_SIGN_IN") SignInWidget(showResult, changeDisplay, _showCreateUser, _signOut, _fetchSession, _getCurrentUser, setError),
                  if (this.displayState == "SHOW_CONFIRM_SIGN_IN") ConfirmSignInWidget(showResult, changeDisplay, setError, _backToSignIn),
                  if (this.displayState == "SHOW_UPDATE_PASSWORD") UpdatePasswordWidget(showResult, changeDisplay, setError, _backToSignIn, _backToApp),
                  if (this.displayState == "SHOW_CONFIRM_RESET") ConfirmResetWidget(showResult, changeDisplay, setError, _backToSignIn),
                  if (this.displayState == "SIGNED_IN") showApp(),
                  if (this.error != "") showErrors(),
                  RaisedButton(
                    key: Key('configure-button'),
                    onPressed: _isAmplifyConfigured ? null: _configureAmplify,
                    child: const Text('configure'),
                  ),
                ]
              )
            ],
          ),
        )
      ),
    );
  }
}