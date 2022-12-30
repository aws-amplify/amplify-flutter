// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class UpdatePasswordWidget extends StatefulWidget {
  const UpdatePasswordWidget(
    this.showResult,
    this.changeDisplay,
    this.setError,
    this.backToSignIn,
    this.backToApp, {
    super.key,
  });

  final void Function(String) showResult;
  final void Function(String) changeDisplay;
  final void Function(Object) setError;
  final VoidCallback backToSignIn;
  final VoidCallback backToApp;

  @override
  State<UpdatePasswordWidget> createState() => _UpdatePasswordWidgetState();
}

class _UpdatePasswordWidgetState extends State<UpdatePasswordWidget> {
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  void _updatePassword() async {
    try {
      await Amplify.Auth.updatePassword(
        newPassword: newPasswordController.text.trim(),
        oldPassword: oldPasswordController.text.trim(),
      );
      widget.showResult('Password Updated');
      widget.changeDisplay('SIGNED_IN');
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
                controller: oldPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.question_answer),
                  hintText: 'Your old password',
                  labelText: 'Old Password *',
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
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: _updatePassword,
                child: const Text('Update Password'),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: widget.backToApp,
                child: const Text('Back to App'),
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
