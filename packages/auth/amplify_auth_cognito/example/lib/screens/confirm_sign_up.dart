// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpWidget extends StatefulWidget {
  const ConfirmSignUpWidget(
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
  State<ConfirmSignUpWidget> createState() => _ConfirmSignUpWidgetState();
}

class _ConfirmSignUpWidgetState extends State<ConfirmSignUpWidget> {
  final usernameController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  void _confirmSignUp() async {
    try {
      final res = await Amplify.Auth.confirmSignUp(
        username: usernameController.text.trim(),
        confirmationCode: confirmationCodeController.text.trim(),
      );
      widget.showResult(
        'Confirm Sign Up Status = ${res.nextStep.signUpStep}',
      );
      widget.changeDisplay(
        res.nextStep.signUpStep != 'DONE' ? 'SHOW_CONFIRM' : 'SHOW_SIGN_IN',
      );
    } on Exception catch (e) {
      widget.setError(e);
    }
  }

  void _resendSignUpCode() async {
    try {
      final res = await Amplify.Auth.resendSignUpCode(
        username: usernameController.text.trim(),
      );
      widget.showResult(
        'Sign Up Code Resent to ${res.codeDeliveryDetails.destination}',
      );
    } on Exception catch (e) {
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
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                key: const Key('confirm-signup-username-input'),
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Your username',
                  labelText: 'Username *',
                ),
              ),
              TextFormField(
                key: const Key('confirm-signup-code-input'),
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.confirmation_number),
                  hintText: 'The code we sent you',
                  labelText: 'Confirmation Code *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                key: const Key('confirm-user-button'),
                onPressed: _confirmSignUp,
                child: const Text('Confirm SignUp'),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: _resendSignUpCode,
                child: const Text('ResendCode'),
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
