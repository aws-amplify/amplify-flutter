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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/Views/ErrorView.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  String _signUpError = "";
  List<String> _signUpExceptions = [];

  @override
  void initState() {
    super.initState();
  }

  void _signUp() async {
    Map<String, dynamic> userAttributes = {
      "email": emailController.text,
      "phone_number": phoneController.text,
    };
    try {
      SignUpResult res = await Amplify.Auth.signUp(
        request: SignUpRequest(
            username: usernameController.text.trim(),
            password: passwordController.text.trim(),
            options: CognitoSignUpOptions(userAttributes: userAttributes)),
      );
      Navigator.pop(context, true);
    } on AuthError catch (e) {
      setState(() {
        _signUpError = e.cause;
        _signUpExceptions.clear();
        e.exceptionList.forEach((el) {
          _signUpExceptions.add(el.exception);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Username',
                    labelText: 'Username *',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'Password',
                    labelText: 'Password *',
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Email',
                    labelText: 'Email *',
                  ),
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    hintText: 'Phone number (WITH AREA CODE)',
                    labelText: 'Phone number *',
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: _signUp,
                  child: const Text('Sign Up'),
                ),
                ErrorView(_signUpError, _signUpExceptions)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
