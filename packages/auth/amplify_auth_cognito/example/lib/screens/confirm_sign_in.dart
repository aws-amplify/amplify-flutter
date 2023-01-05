// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class ConfirmSignInWidget extends StatefulWidget {
  const ConfirmSignInWidget(
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
  State<ConfirmSignInWidget> createState() => _ConfirmSignInWidgetState();
}

class _ConfirmSignInWidgetState extends State<ConfirmSignInWidget> {
  final usernameController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  void _confirmSignIn() async {
    try {
      final res = await Amplify.Auth.confirmSignIn(
        confirmationValue: confirmationCodeController.text.trim(),
      );
      widget.showResult(
        'Confirm Sign In Status = ${res.nextStep.signInStep}',
      );
      widget.changeDisplay(
        res.nextStep.signInStep == AuthSignInStep.done
            ? 'SIGNED_IN'
            : 'SHOW_CONFIRM_SIGN_IN',
      );
    } on Exception catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              TextFormField(
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'The secret answer to the auth challange',
                  labelText: 'Challange Response *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: _confirmSignIn,
                child: const Text('Confirm SignIn'),
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
