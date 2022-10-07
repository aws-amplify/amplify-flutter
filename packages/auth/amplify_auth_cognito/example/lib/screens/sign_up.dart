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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget(
    this.showResult,
    this.changeDisplay,
    this.setError,
    this.backToSignIn, {
    super.key,
  });

  final void Function(String) showResult;
  final void Function(String) changeDisplay;
  final void Function(Object?) setError;
  final VoidCallback backToSignIn;

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  void _signUp() async {
    final userAttributes = {
      CognitoUserAttributeKey.email: emailController.text,
      CognitoUserAttributeKey.phoneNumber: phoneController.text,
    };
    try {
      final res = await Amplify.Auth.signUp(
        username: usernameController.text.trim(),
        password: passwordController.text.trim(),
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );
      widget.showResult('Sign Up Status = ${res.nextStep.signUpStep}');
      widget.changeDisplay(
        res.nextStep.signUpStep != 'DONE' ? 'SHOW_CONFIRM' : 'SHOW_SIGN_UP',
      );
    } on Exception catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      key: const Key('signup-component'),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Column(
            children: [
              TextFormField(
                key: const Key('signup-username-input'),
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'The name you will use to login',
                  labelText: 'Username *',
                ),
              ),
              TextFormField(
                key: const Key('signup-password-input'),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'The password you will use to login',
                  labelText: 'Password *',
                ),
              ),
              TextFormField(
                key: const Key('signup-email-input'),
                controller: emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Your email address',
                  labelText: 'Email *',
                ),
              ),
              TextFormField(
                key: const Key('signup-phone-input'),
                controller: phoneController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Your phone number',
                  labelText: 'Phone number *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                key: const Key('signup-button'),
                onPressed: _signUp,
                child: const Text('Sign Up'),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                key: const Key('goto-signin-button'),
                onPressed: widget.backToSignIn,
                child: const Text('Back to Sign In'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
