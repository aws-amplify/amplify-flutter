//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget(
    this.showResult,
    this.changeDisplay,
    this.showCreateUser,
    this.signOut,
    this.fetchSession,
    this.getCurrentUser,
    this.setError, {
    super.key,
  });

  final void Function(String) showResult;
  final void Function(String) changeDisplay;
  final VoidCallback showCreateUser;
  final VoidCallback signOut;
  final VoidCallback fetchSession;
  final VoidCallback getCurrentUser;
  final void Function(Object?) setError;

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  AuthProvider provider = AuthProvider.amazon;

  void _signIn() async {
    try {
      final res = await Amplify.Auth.signIn(
        username: usernameController.text.trim(),
        password: passwordController.text.trim(),
      );
      widget.showResult(
        'Sign In Status = ${res.nextStep?.signInStep ?? 'null'}',
      );
      widget.changeDisplay(
        res.isSignedIn ? 'SIGNED_IN' : 'SHOW_CONFIRM_SIGN_IN',
      );
    } on Exception catch (e) {
      widget.setError(e);
    }
  }

  void _signInWithWebUI() async {
    try {
      final res = await Amplify.Auth.signInWithWebUI();
      widget.showResult('Social Sign In Success = $res');
      widget.changeDisplay(res.isSignedIn ? 'SIGNED_IN' : 'SHOW_SIGN_IN');
      safePrint(res);
    } on Exception catch (e) {
      widget.setError(e);
    }
  }

  void _signInWithSocialWebUI() async {
    try {
      final res = await Amplify.Auth.signInWithWebUI(provider: provider);
      widget.showResult('Social Sign In Success = $res');
      widget.changeDisplay(res.isSignedIn ? 'SIGNED_IN' : 'SHOW_SIGN_IN');
      safePrint(res);
    } on Exception catch (e) {
      widget.setError(e);
    }
  }

  void _resetPassword() async {
    try {
      final res = await Amplify.Auth.resetPassword(
        username: usernameController.text.trim(),
      );
      widget.showResult('Reset Password Status = ${res.nextStep.updateStep}');
      widget.changeDisplay('SHOW_CONFIRM_RESET');
    } on Exception catch (e) {
      widget.setError(e);
      safePrint(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      key: const Key('signin-component'),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                key: const Key('signin-username-input'),
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Your username',
                  labelText: 'Username *',
                ),
              ),
              TextFormField(
                key: const Key('signin-password-input'),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Your password',
                  labelText: 'Password *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 4,
                childAspectRatio: 3,
                padding: const EdgeInsets.all(5),
                children: [
                  ElevatedButton(
                    key: const Key('signin-button'),
                    onPressed: _signIn,
                    child: const Text('Sign In'),
                  ),
                  ElevatedButton(
                    key: const Key('signin-webui-button'),
                    onPressed: _signInWithWebUI,
                    child: const Text('Hosted UI Sign In'),
                  ),
                  ElevatedButton(
                    key: const Key('goto-signup-button'),
                    onPressed: widget.showCreateUser,
                    child: const Text('Create User'),
                  ),
                  ElevatedButton(
                    key: const Key('reset-button'),
                    onPressed: _resetPassword,
                    child: const Text('Reset Password'),
                  ),
                  ElevatedButton(
                    key: const Key('signout-button'),
                    onPressed: widget.signOut,
                    child: const Text('SignOut'),
                  ),
                  ElevatedButton(
                    key: const Key('session-button'),
                    onPressed: widget.fetchSession,
                    child: const Text('Get Session'),
                  ),
                  ElevatedButton(
                    key: const Key('current-user-button'),
                    onPressed: widget.getCurrentUser,
                    child: const Text('Get Current User'),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                children: [
                  ElevatedButton(
                    key: const Key('signin-webui-button'),
                    onPressed: _signInWithSocialWebUI,
                    child: const Text('Sign In With Social Provider'),
                  ),
                  DropdownButton<AuthProvider>(
                    value: provider,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (AuthProvider? newValue) {
                      setState(() {
                        if (newValue != null) {
                          provider = newValue;
                        }
                      });
                    },
                    items: <AuthProvider>[
                      AuthProvider.google,
                      AuthProvider.facebook,
                      AuthProvider.amazon
                    ].map<DropdownMenuItem<AuthProvider>>((AuthProvider value) {
                      return DropdownMenuItem<AuthProvider>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
