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

class ConfirmSignUpWidget extends StatefulWidget {
  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final VoidCallback backToSignIn;

  const ConfirmSignUpWidget(
    this.showResult,
    this.changeDisplay,
    this.setError,
    this.backToSignIn, {
    super.key,
  });

  @override
  State<ConfirmSignUpWidget> createState() => _ConfirmSignUpWidgetState();
}

class _ConfirmSignUpWidgetState extends State<ConfirmSignUpWidget> {
  final usernameController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  void _confirmSignUp() async {
    try {
      var res = await Amplify.Auth.confirmSignUp(
          username: usernameController.text.trim(),
          confirmationCode: confirmationCodeController.text.trim());
      widget.showResult('Confirm Sign Up Status = ${res.nextStep.signUpStep}');
      widget.changeDisplay(
          res.nextStep.signUpStep != 'DONE' ? 'SHOW_CONFIRM' : 'SHOW_SIGN_IN');
    } on AmplifyException catch (e) {
      widget.setError(e);
    }
  }

  void _resendSignUpCode() async {
    try {
      var res = await Amplify.Auth.resendSignUpCode(
        username: usernameController.text.trim(),
      );
      widget.showResult(
          'Sign Up Code Resent to ${res.codeDeliveryDetails.destination}');
    } on AmplifyException catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      key: const Key('confirm-signup-component'),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                  key: const Key('confirm-signup-username-input'),
                  controller: usernameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Your username',
                    labelText: 'Username *',
                  )),
              TextFormField(
                  key: const Key('confirm-signup-code-input'),
                  controller: confirmationCodeController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.confirmation_number),
                    hintText: 'The code we sent you',
                    labelText: 'Confirmation Code *',
                  )),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                key: const Key('confirm-user-button'),
                onPressed: _confirmSignUp,
                child: const Text('Confirm SignUp'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: _resendSignUpCode,
                child: const Text('ResendCode'),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
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
