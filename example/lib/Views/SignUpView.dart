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
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Views/ErrorView.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  String _signUpError = "";
  bool _isSignedUp = false;

  @override
  void initState() {
    super.initState();
  }

  void _signUp() async {
    setState(() {
      _signUpError = "";
    });

    Map<CognitoUserAttributeKey, String> userAttributes = {
      CognitoUserAttributeKey.email: emailController.text,
      CognitoUserAttributeKey.phoneNumber: phoneController.text,
    };
    try {
      await Amplify.Auth.signUp(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
          options: CognitoSignUpOptions(userAttributes: userAttributes));

      setState(() {
        _isSignedUp = true;
      });
    } on AuthException catch (error) {
      _setError(error);
    }
  }

  void _confirmSignUp() async {
    setState(() {
      _signUpError = "";
    });

    try {
      await Amplify.Auth.confirmSignUp(
          username: usernameController.text.trim(),
          confirmationCode: confirmationCodeController.text.trim());
      Navigator.pop(context, true);
    } on AuthException catch (error) {
      _setError(error);
    }
  }

  void _setError(AuthException error) {
    setState(() {
      _signUpError = error.message;
    });
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
                Visibility(
                  visible: !_isSignedUp,
                  child: Column(children: [
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
                    ElevatedButton(
                      onPressed: _signUp,
                      child: const Text('Sign Up'),
                    ),
                  ]),
                ),
                Visibility(
                    visible: _isSignedUp,
                    child: Column(children: [
                      TextFormField(
                          controller: confirmationCodeController,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.confirmation_number),
                            hintText: 'The code we sent you',
                            labelText: 'Confirmation Code *',
                          )),
                      ElevatedButton(
                        onPressed: _confirmSignUp,
                        child: const Text('Confirm Sign Up'),
                      ),
                    ])),
                const Padding(padding: EdgeInsets.all(10.0)),
                ErrorView(_signUpError)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
