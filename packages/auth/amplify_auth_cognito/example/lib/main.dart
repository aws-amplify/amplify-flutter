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
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'Widgets/ConfirmResetWidget.dart';
import 'Widgets/ConfirmSignInWidget.dart';
import 'Widgets/ConfirmSignUpWidget.dart';
import 'Widgets/SignInWidget.dart';
import 'Widgets/SignUpWidget.dart';
import 'Widgets/UpdatePasswordWidget.dart';
import 'Widgets/ViewUserAttributes.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
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
  late StreamSubscription subscription;

  bool _isAmplifyConfigured = false;
  late AmplifyAuthCognito auth;
  String displayState = '';
  String authState = 'User not signed in';
  String lastHubEvent = '';
  AmplifyException? _error;

  @override
  void initState() {
    super.initState();
  }

  void showResult(_authState) async {
    setState(() {
      _error = null;
      authState = _authState;
    });
    print(authState);
  }

  void changeDisplay(_displayState) async {
    setState(() {
      _error = null;
      displayState = _displayState;
    });
    print(displayState);
  }

  void setError(AmplifyException e) async {
    setState(() {
      _error = e;
    });
  }

  void _configureAmplify() async {
    auth = AmplifyAuthCognito();
    await Amplify.addPlugin(auth);
    var isSignedIn = false;

    subscription = Amplify.Hub.listen([HubChannel.Auth], (hubEvent) {
      setState(() {
        lastHubEvent = hubEvent.eventName;
      });
      if (lastHubEvent != 'SIGNED_IN') {
        changeDisplay('SHOW_SIGN_IN');
      }
      print('HUB: $lastHubEvent');
    });
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          'Amplify was already configured. Looks like app restarted on android.');
    }
    try {
      isSignedIn = await _isSignedIn();
    } on AmplifyException {
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

  Future<void> _deleteUser() async {
    await Amplify.Auth.deleteUser();
  }

  void _signOut() async {
    try {
      await Amplify.Auth.signOut();
      showResult('Signed Out');
      changeDisplay('SHOW_SIGN_IN');
    } on AmplifyException catch (e) {
      setState(() {
        _error = e;
      });
      print(e);
    }
  }

  void _globalSignOut() async {
    try {
      await Amplify.Auth.signOut(options: SignOutOptions(globalSignOut: true));
      showResult('Signed Out');
      changeDisplay('SHOW_SIGN_IN');
    } on AmplifyException catch (e) {
      setState(() {
        _error = e;
      });
      print(e);
    }
  }

  void _fetchSession() async {
    try {
      CognitoAuthSession res = await Amplify.Auth.fetchAuthSession(
              options: CognitoSessionOptions(getAWSCredentials: true))
          as CognitoAuthSession;
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

  void _viewUserAttributes() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ViewUserAttributes(),
      ),
    );
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

  // error is not null at this point
  Widget showError(AmplifyException error) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              // wrap your Column in Expanded
              child: Column(children: [
            Text('Error: ${error.runtimeType.toString()}'),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text('Message: ${error.message}'),
            if (error.recoverySuggestion != null)
              Text('Recovery: ${error.recoverySuggestion}'),
            const Padding(padding: EdgeInsets.all(10.0)),
            if (error.underlyingException != null)
              Text('Underlying: + ${error.underlyingException}'),
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
                onPressed: _globalSignOut,
                child: const Text('Global Sign Out'),
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
                  onPressed: _viewUserAttributes,
                  child: const Text('View/Edit User Attributes')),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _deleteUser,
                child: const Text('Delete User'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  showAuthState() {
    return Text('Current auth state: $authState');
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
                      if (displayState == 'SHOW_CONFIRM_RESET')
                        ConfirmResetWidget(
                            showResult, changeDisplay, setError, _backToSignIn),
                      if (this.displayState == "SIGNED_IN") showApp(),
                      ElevatedButton(
                        key: Key('configure-button'),
                        onPressed:
                            _isAmplifyConfigured ? null : _configureAmplify,
                        child: const Text('configure'),
                      ),
                      if (_error != null) showError(_error!)
                    ])
              ],
            ),
          )),
    );
  }
}
