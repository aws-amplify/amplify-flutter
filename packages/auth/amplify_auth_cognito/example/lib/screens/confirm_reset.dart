// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class ConfirmResetWidget extends StatefulWidget {
  const ConfirmResetWidget(
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
  State<ConfirmResetWidget> createState() => _ConfirmWidgetState();
}

class _ConfirmWidgetState extends State<ConfirmResetWidget> {
  final usernameController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  void _confirmReset() async {
    try {
      await Amplify.Auth.confirmResetPassword(
        username: usernameController.text.trim(),
        newPassword: newPasswordController.text.trim(),
        confirmationCode: confirmationCodeController.text.trim(),
      );
      widget.showResult('Password Confirmed');
      widget.changeDisplay('SHOW_SIGN_IN');
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
                controller: usernameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.verified_user),
                  hintText: 'Your old username',
                  labelText: 'Username *',
                ),
              ),
              TextFormField(
                controller: newPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'Your new password',
                  labelText: 'New Password *',
                ),
              ),
              TextFormField(
                controller: confirmationCodeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.confirmation_number),
                  hintText: 'The confirmation code we sent you',
                  labelText: 'Confirmation Code *',
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: _confirmReset,
                child: const Text('Confirm Password Reset'),
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
