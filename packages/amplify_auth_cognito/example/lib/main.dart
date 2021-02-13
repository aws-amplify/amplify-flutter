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

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
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
  StreamSubscription subscription;

  bool _isAmplifyConfigured = false;
  AmplifyAuthCognito auth;
  String displayState;
  String authState = 'User not signed in';
  String lastHubEvent = '';
  AmplifyException error;

  @override
  void initState() {
    super.initState();
  }

  void showResult(_authState) async {
    setState(() {
      error = null;
      authState = _authState;
    });
    print(authState);
  }

  void changeDisplay(_displayState) async {
    setState(() {
      error = null;
      displayState = _displayState;
    });
    print(displayState);
  }

  void setError(AmplifyException e) async {
    setState(() {
      error = e;
    });
  }

  void _configureAmplify() async {
    auth = AmplifyAuthCognito();
    await Amplify.addPlugin(auth);
    var isSignedIn = false;

    subscription = Amplify.Hub.listen([HubChannel.Auth], (hubEvent) {
      switch (hubEvent.eventName) {
        case 'SIGNED_IN':
          {
            setState(() {
              lastHubEvent = 'SIGNED_IN';
            });
            print('HUB: USER IS SIGNED IN');
          }
          break;
        case 'SIGNED_OUT':
          {
            setState(() {
              lastHubEvent = 'SIGNED_OUT';
            });
            print('HUB: USER IS SIGNED OUT');
          }
          break;
        case 'SESSION_EXPIRED':
          {
            setState(() {
              lastHubEvent = 'SESSION_EXPIRED';
            });
            print('HUB: USER SESSION HAS EXPIRED');
          }
          break;
      }
    });
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          'Amplify was already configured. Looks like app restarted on android.');
    }
    try {
      isSignedIn = await _isSignedIn();
    } on AmplifyException catch (e) {
      print('User is not signed in.');
    }

    setState(() {
      _isAmplifyConfigured = true;
      displayState = isSignedIn ? 'SIGNED_IN' : 'SHOW_SIGN_IN';
      authState = isSignedIn ? 'User already signed in' : 'User not signed in';
    });
  }

  Future<bool> _isSignedIn() async {
    final session = await Amplify.Auth.fetchAuthSession();
    return session.isSignedIn;
  }

  void _signOut() async {
    try {
      await Amplify.Auth.signOut();
      showResult('Signed Out');
      changeDisplay('SHOW_SIGN_IN');
    } on AmplifyException catch (e) {
      setState(() {
        error = e;
      });
      print(e);
    }
  }

  void _fetchSession() async {
    try {
      CognitoAuthSession res = await Amplify.Auth.fetchAuthSession(
          options: CognitoSessionOptions(getAWSCredentials: true));
      showResult('Session Sign In Status = ' + res.isSignedIn.toString());
    } on AmplifyException catch (e) {
      setError(e);
      print(e);
    }
  }

  void _getCurrentUser() async {
    try {
      var res = await Amplify.Auth.getCurrentUser();
      showResult('Current User Name = ' + res.username);
    } on AmplifyException catch (e) {
      setError(e);
    }
  }

  void _fetchUserAttributes() async {
    try {
      var res = await Amplify.Auth.fetchUserAttributes();
      showResult('User attributes = ' + res.toString());
    } on AmplifyException catch (e) {
      setError(e);
    }
  }

  void _stopListening() {
    subscription.cancel();
  }

  void _showCreateUser() async {
    changeDisplay('SHOW_SIGN_UP');
  }

  void _showUpdatePassword() async {
    changeDisplay('SHOW_UPDATE_PASSWORD');
  }

  void _backToSignIn() async {
    changeDisplay('SHOW_SIGN_IN');
  }

  void _backToApp() async {
    changeDisplay('SIGNED_IN');
  }

  Widget showErrors() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              // wrap your Column in Expanded
              child: Column(children: [
            Text('Error: ' + error.runtimeType.toString()),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text('Message: ' + error.message),
            if (error.recoverySuggestion != null)
              Text('Recovery: ' + error.recoverySuggestion),
            const Padding(padding: EdgeInsets.all(10.0)),
            if (error.underlyingException != null)
              Text('Underlying: ' + error.underlyingException),
            const Padding(padding: EdgeInsets.all(10.0)),
          ]))
        ]);
  }

  Widget showApp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              Text('You are signed in!'),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _signOut,
                child: const Text('Sign Out'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _showUpdatePassword,
                child: const Text('Change Password'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _stopListening,
                child: const Text('Stop Listening'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _fetchSession,
                child: const Text('Get Session'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                  onPressed: _getCurrentUser,
                  child: const Text('Get CurrentUser')),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                  onPressed: _fetchUserAttributes,
                  child: const Text('Get User Attributes'))
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
      children: [Text('Recent Hub Event: '), Text('$lastHubEvent')],
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
                      if (displayState == 'SHOW_SIGN_UP')
                        SignUpWidget(
                            showResult, changeDisplay, setError, _backToSignIn),
                      if (displayState == 'SHOW_CONFIRM')
                        ConfirmSignUpWidget(
                            showResult, changeDisplay, setError, _backToSignIn),
                      if (displayState == 'SHOW_SIGN_IN')
                        SignInWidget(showResult, changeDisplay, _showCreateUser,
                            _signOut, _fetchSession, _getCurrentUser, setError),
                      if (displayState == 'SHOW_CONFIRM_SIGN_IN')
                        ConfirmSignInWidget(
                            showResult, changeDisplay, setError, _backToSignIn),
                      if (displayState == 'SHOW_UPDATE_PASSWORD')
                        UpdatePasswordWidget(showResult, changeDisplay,
                            setError, _backToSignIn, _backToApp),
                      if (displayState == 'SHOW_UPDATE_PASSWORD')
                        if (displayState == 'SHOW_CONFIRM_RESET')
                          ConfirmResetWidget(showResult, changeDisplay,
                              setError, _backToSignIn),
                      if (this.displayState == "SIGNED_IN") showApp(),
                      ElevatedButton(
                        key: Key('configure-button'),
                        onPressed:
                            _isAmplifyConfigured ? null : _configureAmplify,
                        child: const Text('configure'),
                      ),
                      if (error != null) showErrors()
                    ])
              ],
            ),
          )),
    );
  }
}
