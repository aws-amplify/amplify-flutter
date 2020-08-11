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
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  bool _isAmplifyConfigured = false;
  Amplify amplify = new Amplify();
  AmplifyAuthCognito  auth;
  String displayState;
  String authState;
  String error;
  List<String> exceptions = [];

  @override
  void initState() {
    super.initState();
  }

  void _configureAmplify() async {

    auth = new AmplifyAuthCognito();
    amplify.addPlugin(authPlugins: [auth]);

    await amplify.configure(amplifyconfig);
    setState(() {
      _isAmplifyConfigured = true;
      displayState = "SHOW_SIGN_IN";
    });
    auth.events.listenToAuth((hubEvent) {
      switch(hubEvent["eventName"]) {
        case "SIGNED_IN": {
          print("USER IS SIGNED IN");
        }
        break;
        case "SIGNED_OUT": {
          print("USER IS SIGNED OUT");
        }
        break;
        case "SESSION_EXPIRED": {
          print("USER IS SIGNED IN");
        }
        break;
        default: {
          print("CONFIGURATION EVENT");
        }
      }
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
    };
    Map<String, String> validationData = {
      "test": "value"
    };
    try {
      SignUpResult res = await Amplify.Auth.signUp(
        request: SignUpRequest(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
          options: CognitoSignUpOptions(
            userAttributes: userAttributes,
            validationData: validationData
          )
        ), 
      );
      setState(() {
        displayState = res.nextStep.signUpStep != "DONE" ? "SHOW_CONFIRM" : "SHOW_SIGN_UP";
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

  void _confirmSignUp() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      SignUpResult res = await Amplify.Auth.confirmSignUp(
        request: ConfirmSignUpRequest(
          username: usernameController.text.trim(),
          confirmationCode: confirmationCodeController.text.trim()
        ), 
      );
      setState(() {
        displayState = res.nextStep.signUpStep != "DONE" ? "SHOW_CONFIRM" : "SHOW_SIGN_IN";
        authState = "ConfirmSignUp: " + res.nextStep.signUpStep;
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

  void _signIn() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      SignInResult res = await Amplify.Auth.signIn(
        request: SignInRequest(
          username: usernameController.text.trim(),
          password: passwordController.text.trim()
        ), 
      );
      setState(() {
        displayState = res.isSignedIn ? "SIGNED_IN" : "SHOW_CONFIRM_SIGN_IN" ;
        authState = "Signin: " + res.nextStep.signInStep;
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

   void _confirmSignIn() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      SignInResult res = await Amplify.Auth.confirmSignIn(
        request: ConfirmSignInRequest(
          confirmationValue: confirmationCodeController.text.trim()
        ), 
      );
      setState(() {
        displayState = res.nextStep.signInStep == "DONE" ? "SIGNED_IN" : "SHOW_CONFIRM_SIGN_IN";
        authState = "SignIn: " + res.nextStep.signInStep;
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

  void _signOut() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      await Amplify.Auth.signOut(
        request: SignOutRequest(
          options: CognitoSignOutOptions(
            globalSignOut: true
          )
        )
      );
      setState(() {
        displayState = 'SHOW_SIGN_IN';
        authState = "SIGNED OUT";
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

  void _updatePassword() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      await Amplify.Auth.updatePassword(
        request: UpdatePasswordRequest(
          newPassword: newPasswordController.text.trim(),
          oldPassword: oldPasswordController.text.trim()
        ), 
      );
      setState(() {
        displayState = 'SIGNED_IN';
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

  void _resetPassword() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      ResetPasswordResult res = await Amplify.Auth.resetPassword(
        request: ResetPasswordRequest(
          username: usernameController.text.trim(),
        ), 
      );
      setState(() {
        displayState = "SHOW_CONFIRM_REST";
        authState = res.nextStep.updateStep;
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

  void _confirmReset() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      UpdatePasswordResult res = await Amplify.Auth.confirmPassword(
        request: ConfirmPasswordRequest(
          username: usernameController.text.trim(),
          newPassword: newPasswordController.text.trim(),
          confirmationCode: confirmationCodeController.text.trim()
        ), 
      );
      setState(() {
        displayState = "SHOW_SIGN_IN";
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
  
  void _fetchSession() async {
    setState(() {
      error = "";
      exceptions = [];
    });
    try {
      AuthSession res = await Amplify.Auth.fetchAuthSession(
        request: AuthSessionRequest(
          options: CognitoSessionOptions(getAWSCredentials: false)
        )
      );
      print(res);
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

  void _stopListening() async {
    auth.events.stopListeningToAuth();
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

  void _showUpdatePassword() async {
    setState(() {
      displayState = "SHOW_CHANGE_PASSWORD";
    });
  }

Widget showConfirmSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column (
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

  Widget showConfirmSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'The secret answer to the auth challange',
                  labelText: 'Challange Response *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _confirmSignIn,
                child: const Text('Confirm SignIn'),
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
              child: const Text('Sign In'),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _createUser,
              child: const Text('Create User'),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _resetPassword,
              child: const Text('Reset Password'),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _signOut,
              child: const Text('SignOut'),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _fetchSession,
              child: const Text('Get Session'),
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

  Widget showUpdatePassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded( // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                controller: oldPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'Your old password',
                  labelText: 'Old Password *',
                )
              ),
              TextFormField(
                controller: newPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'Your new password',
                  labelText: 'New Password *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _updatePassword,
                child: const Text('Update Password'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed:_signOut,
                child: const Text('Sign out'),
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  Widget showConfirmReset() {
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
                  icon: Icon(Icons.verified_user),
                  hintText: 'Your old username',
                  labelText: 'Username *',
                )
              ),
              TextFormField(
                controller: newPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'Your new password',
                  labelText: 'New Password *',
                )
              ),
              TextFormField(
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.confirmation_number),
                  hintText: 'The confirmation code we sent you',
                  labelText: 'Confirmation Code *',
                )
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: _confirmReset,
                child: const Text('Confirm Password Reset'),
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
              )
            ],
          ),
        ),
      ],
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
                if (this.displayState == "SHOW_CONFIRM_SIGN_IN") showConfirmSignIn(),
                if (this.displayState == "SHOW_CHANGE_PASSWORD") showUpdatePassword(),
                if (this.displayState == "SHOW_CONFIRM_REST") showConfirmReset(),
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